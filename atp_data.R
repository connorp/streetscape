## Streetscape Changes
## Connor P. Jackson -- cpjackson@berkeley.edu
## CA Active Transportation Program data

library(readxl)
library(data.table)

data_folder <- "/Users/connor/cpjackson@berkeley.edu - Google Drive/My Drive/Streetscape/"

## ---- import-applications ----

atp_data_excel <- paste0(data_folder, "ATP/ATP Project Data_Main.xls")
atp_scores_3 <- paste0(data_folder, "ATP/cycle-3-scores.xlsx")
atp_scores_4 <- paste0(data_folder, "ATP/cycle-4-scores.xlsx")
atp_scores_5 <- paste0(data_folder, "ATP/cycle-5-scores.xlsx")
atp_MPO_proj_4 <- paste0(data_folder, "ATP/Cycle 4/cycle_4_MPO_projects.xlsx")


atp <- read_excel(atp_data_excel, sheet = "MainData", .name_repair = "universal")
atp_fund <- read_excel(atp_data_excel, sheet = "Funding", .name_repair = "universal")
atp_output <- read_excel(atp_data_excel, sheet = "Outputs", .name_repair = "universal")

setDT(atp)
setDT(atp_fund)
setDT(atp_output)

# A few columns are duplicated across the sheets. Drop the unneeded data
atp_fund[, c("A1.Imp.Agcy.Name", "A2.Info.Proj.Loc", "A2.Info.Proj.Name", 
             "A2.Info.Proj.Descr", "App.Fk") := NULL]
atp_output[, c("A1.Imp.Agcy.Name", "A2.Info.Proj.Name", "App.Fk") := NULL]

# merge the three sheets into a unified table
atp <- merge(atp, atp_fund, by = c("Project.Cycle", "Project.App.Id"))
atp <- merge(atp, atp_output, by = c("Project.Cycle", "Project.App.Id"))

# Drop the row without data in it
atp <- atp[!is.na(Project.Cycle)]

# Remove columns with only NAs
# atp[, which(unlist(lapply(atp, function(x) !all(is.na(x))))),with=FALSE]

rm(atp_fund, atp_output)

# Clean the project cycle and application ID columns for ease of merging
atp[, Project.Cycle := as.integer(gsub("[[:alpha:] ]", "", Project.Cycle))]

atp[, Project.App.Id := gsub(" *(-[0-9]*)$", "\\1", Project.App.Id)] # no space before the final -#
atp[, Project.App.Id := gsub("^0", "", Project.App.Id)]  # no leading 0
atp[, Project.App.Id := gsub("\\.([^ -])", ". \\1", Project.App.Id)]  # Ensure proper spacing after "Dept."

# fix some misspellings and abbreviation inconsistencies
atp[, Project.App.Id := gsub("Department", "Dept.", Project.App.Id, fixed = TRUE)]
atp[, Project.App.Id := gsub("Los Angeles", "LA", Project.App.Id, fixed = TRUE)]
atp[, Project.App.Id := gsub("City of LA", "LA", Project.App.Id, fixed = TRUE)]
atp[, Project.App.Id := gsub("Associateion", "Association", Project.App.Id, fixed = TRUE)]
atp[, Project.App.Id := gsub("Metropilitan", "Metropolitan", Project.App.Id, fixed = TRUE)]

setkey(atp, Project.Cycle, Project.App.Id)

## ---- import-scores ----

scores3 <- read_excel(atp_scores_3, .name_repair = "universal")
scores4 <- read_excel(atp_scores_4, .name_repair = "universal")
scores5 <- read_excel(atp_scores_5, .name_repair = "universal")
setDT(scores3)
setDT(scores4)
setDT(scores5)

scores3[, Project.Cycle := 3L]
scores4[, Project.Cycle := 4L]
scores5[, Project.Cycle := 5L]

# get rid of some non-numeric scores
scores4[Final.Score == "N/A", Final.Score := NA]
scores4[, Final.Score := as.numeric(Final.Score)]
scores5[Final.Score %in% c("INELIGIBLE", "WITHDRAWN"), Final.Score := NA]
scores5[, Final.Score := as.numeric(Final.Score)]

# Cycle 3 scores have to be handled differently because they don't have 
# application IDs attached
scores <- rbindlist(list(scores4, scores5), use.names = TRUE, fill=TRUE)
rm(scores4, scores5)

## Clean the Application ID column for easy merging
scores[, Application.ID := gsub("[^[:alnum:]-]*$", "", Application.ID)]  # Drop inappropriate trailing characters
scores[, Application.ID := gsub("\\r\\n", " ", Application.ID)]  # remove line breaks
scores[, Application.ID := gsub(" +([0-9]+)$", "-\\1", Application.ID)]  # use - rather than space at end

# Fix some abbreviation inconsistencies and a misnumbering
scores[, Application.ID := gsub("Department", "Dept.", Application.ID, fixed = TRUE)]
scores[, Application.ID := gsub("Los Angeles", "LA", Application.ID, fixed = TRUE)]
scores[, Application.ID := gsub("City of Los Angeles", "LA", Application.ID)]
scores[, Application.ID := gsub("4-Sunnyvale-1", "4-Sunnyvale-2", Application.ID, fixed = TRUE)]

setnames(scores, "Application.ID", "Project.App.Id")
setkey(scores, Project.Cycle, Project.App.Id)

county_crosswalk <- fread("county_crosswalk.csv", na.strings = "")
county_crosswalk[is.na(MPO), MPO := "small_urban_rural"]

scores3 <- merge(scores3, county_crosswalk, on = "Co")
scores3[, Co := NULL]

# Cycle 3 scores have to be handled differently because they don't have 
# application IDs attached
scores3[, Project.Title := gsub("\\r\\n", " ", Project.Title)] 
scores3[, Applicant := gsub("\\r\\n", " ", Applicant)] 
setnames(scores3, c("Applicant", "Project.Title"), 
         c("A1.Imp.Agcy.Name", "A2.Info.Proj.Name"))
setkey(scores3, Project.Cycle, A1.Imp.Agcy.Name, A2.Info.Proj.Name)

# merge the scores (and county) into the data
atp[scores, `:=`(score = Final.Score, county = County, funding=funded), 
    on=c("Project.Cycle", "Project.App.Id")]
atp[scores3, `:=`(score = Final.Score, county = County, funding=funded), 
    on=c("Project.Cycle", "A1.Imp.Agcy.Name", "A2.Info.Proj.Name")]

# Identify MPO-funded projects from Cycle 4 (statewide and SUR funded projects,
# as well as Cycles 3 and 5 MPO rounds, are identified in the main scores spreadsheets)
mpo4 <- read_excel(atp_MPO_proj_4, .name_repair = "universal", na = c("N/A", "-"))
setDT(mpo4)
mpo4[, Application.ID := gsub("[^[:alnum:]-]*$", "", Application.ID)]  # Drop inappropriate trailing characters
mpo4[, Application.ID := gsub("\\r\\n", " ", Application.ID)]  # remove line breaks
mpo4[, Application.ID := gsub("Department", "Dept.", Application.ID, fixed = TRUE)]
mpo4[, Application.ID := gsub("Los Angeles", "LA", Application.ID, fixed = TRUE)]
mpo4[, Project.Cycle := 4L]
setnames(mpo4, "Application.ID", "Project.App.Id")
setkey(mpo4, Project.Cycle, Project.App.Id)
atp[mpo4, funding := MPO, on=c("Project.Cycle", "Project.App.Id")]

atp[county_crosswalk[, .(county=County, MPO)], mpo := MPO, on = "county"]

# look for mismatched application IDs
# writeLines(sort(scores3[!atp3, paste(Applicant, Project.Title, sep=":\t")]), "scores_names.txt")
# fwrite(atp3[!scores3, .(Project.App.Id, A1.Imp.Agcy.Name, A2.Info.Proj.Name)], "missing_scores.csv")

## ---- define-analysis-data ----

infra_projects <- c("Infrastructure (I)", "Combination (I/NI)",
                    "Infrastructure + NI - Large", "Infrastructure + NI - Medium",
                    "Infrastructure + NI - Small", "Infrastructure - Large", 
                    "Infrastructure - Medium", "Infrastructure - Small")
analysis_cols <- readLines("columns_to_use.txt")
atp <- atp[A3.Proj.Type %in% infra_projects, ..analysis_cols]

# include Class 1 bike trails in this metric for now
atp[, bike_lanes := rowSums(.SD), .SDcols=c("B.Class.1", "B.Class.2", "B.Class.3", "B.Class.4")]

bike_intersection_cols <- c("B.Sig.Inter.New.Bike.Boxes", "B.Light.Intersection", 
                            "B.Mid.Block.New.RRFB.Signal", "B.Sig.Inter.Timing.Improv", 
                            "B.Un.Sig.New.RRFB.Signal", "B.Un.Sig.Cross.Surf.Improv", 
                            "B.Mid.Block.Surf.Improv")
atp[, bike_intersect := rowSums(.SD) > 0, .SDcols = bike_intersection_cols]

atp[, bikeshare := rowSums(.SD) > 0, .SDcols=c("B.BSP.New.Bikes", "B.BSP.New.Station")]

atp[, bike_parking := rowSums(.SD) > 0, .SDcols=c("B.Bike.New.Secured.Lockers", "B.Bike.New.Racks")]

atp[, any_bike_improv := rowSums(.SD) > 0, .SDcols=c("bike_lanes", "bike_intersect",
                                                  "bikeshare", "bike_parking",
                                                  "B.Light.Rdwy.Seg")]

sidewalk_cols <- c("P.Sidewlks.New.Barrier.Protect", "P.Sidewlks.New_4_to_8", 
                   "P.Sidewlks.New_over.8", "P.Sidewlks.Widen.Existing", 
                   "P.Sidewlks.Reconstruct.Enhance.Exist")
atp[, sidewalk := rowSums(.SD), .SDcols=sidewalk_cols]

ped_intersection_cols <- c("P.Sig.Inter.Enhance.Exist.Crosswlk", 
                           "P.Sig.Inter.New.Crosswlk", "P.Sig.Inter.Ped.Heads", 
                           "P.Sig.Inter.Shorten.Cross", "P.Sig.Inter.Timing.Improv", 
                           "P.Un.Sig.Inter.New.Traff.Sig", "P.Un.Sig.Inter.New.Roundabout", 
                           "P.Un.Sig.Inter.New.RRFB.Sig", "P.Un.Sig.Inter.Shorten.Cross",
                           "P.Un.Sig.Inter.Cross.Surface.Improv", 
                           "P.Mid.Block.Cross.New.RRFB.Signal", 
                           "P.Mid.Block.Cross.Surf.Improv")
atp[, ped_intersect := rowSums(.SD) > 0, .SDcols=ped_intersection_cols]

atp[, ped_curbcut := rowSums(.SD) > 0, .SDcols=c("P.New.ADA.Ramp", "P.Reconstruct.Ramp.to.ADA.Stand")]

atp[, any_ped_improv := rowSums(.SD) > 0, .SDcols=c("sidewalk", "ped_intersect", "ped_curbcut")]

veh_cols <- c("V.Remove.Travel.Ln", "V.Remove.Right.Turn.Pocket", "V.Sig.Inter.New.Roundabout",
              "V.Sig.Inter.Timing.Improv", "V.Un.Sig.Inter.New.Traf.Sig", 
              "V.Un.Sig.Inter.New.Roundabout", "V.Speed.Feedback.Signs")
atp[, any_veh_calming := rowSums(.SD) > 0, .SDcols=veh_cols]

# Other improvements cleaning
atp[B.Other.Bike.Improv.1 %in% c("-", "0", "N/A", "None"), B.Other.Bike.Improv.1 := NA]
atp[B.Other.Bike.Improv.2 %in% c("-", "0", "N/A", "None"), B.Other.Bike.Improv.2 := NA]

# look for "sharrows" and see if Class 3 bike lanes are included

## define approved projects
atp[, funded := !is.na(funding)]
setnames(atp, "funding", "funding_component")
atp[is.na(funding_component), funding_component := "unfunded"]
atp[, uses_state_score := funding_component %in% c("statewide", "small_urban_rural", 
                                                   "KCOG", "StanCOG", "TMPO")]
atp[, funded_statewide := funding_component == "statewide"]
atp[is.na(funded_statewide), funded_statewide := FALSE]

thresholds <- fread("thresholds.csv")
statewide_thresholds <- tibble::deframe(thresholds[funding_component == "statewide", 
                                                   .(Project.Cycle, threshold)])
sur_thresholds <- tibble::deframe(thresholds[funding_component == "small_urban_rural", 
                                             .(Project.Cycle, threshold)])
mpo_thresholds <- thresholds[!(funding_component %in% c("statewide", "small_urban_rural")), 
                             .(Project.Cycle, mpo=funding_component, threshold)]

# Ties are broken by project readiness, score on highest value question. Identify
# tiebreaker losers by reducing their scores by 0.25. The ranking stays the same,
# but they are now on the correct side of the threshold. 
# Statewide tiebreaker losers:
atp[(score == statewide_thresholds[as.character(Project.Cycle)] & 
      funding_component != "statewide"), score := score - 0.25]
# Small urban/rural tiebreaker losers:
atp[(score == sur_thresholds[as.character(Project.Cycle)] & mpo == "small_urban_rural" & 
     funding_component == "unfunded"), score := score - 0.25]

# Create normalized statewide scores
atp[, score_norm := score - statewide_thresholds[as.character(Project.Cycle)]]
