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

# Cycle 3 scores have to be handled differently because they don't have 
# application IDs attached
scores3[, Project.Title := gsub("\\r\\n", " ", Project.Title)] 
scores3[, Applicant := gsub("\\r\\n", " ", Applicant)] 
setnames(scores3, c("Applicant", "Project.Title", "Co"), 
         c("A1.Imp.Agcy.Name", "A2.Info.Proj.Name", "County"))
setkey(scores3, Project.Cycle, A1.Imp.Agcy.Name, A2.Info.Proj.Name)

# merge the scores (and county) into the data
atp[scores, `:=`(score = Final.Score, county = County), 
    on=c("Project.Cycle", "Project.App.Id")]
atp[scores3, `:=`(score = Final.Score, county = County), 
    on=c("Project.Cycle", "A1.Imp.Agcy.Name", "A2.Info.Proj.Name")]

# look for mismatched application IDs
# writeLines(sort(scores3[!atp3, paste(Applicant, Project.Title, sep=":\t")]), "scores_names.txt")
# fwrite(atp3[!scores3, .(Project.App.Id, A1.Imp.Agcy.Name, A2.Info.Proj.Name)], "missing_scores.csv")

## ---- define-analysis-data ----

infra_projects <- c("Infrastructure (I)", "Combination (I/NI)",
                    "Infrastructure + NI - Large", "Infrastructure + NI - Medium",
                    "Infrastructure + NI - Small", "Infrastructure - Large", 
                    "Infrastructure - Medium", "Infrastructure - Small")
atp <- atp[A3.Proj.Type %in% infra_projects]
