---
title: Streetscape Changes and Infrastructure Equity
author: Connor P. Jackson
lang: en
output: 
  pdf_document:
    number_sections: yes
  word_document: default
linestretch: 1.5
linkcolor: blue
urlcolor: blue
bibliography: "/Users/connor/Zotero/My_Library.json"
link-citations: true
reference-section-title: References
biblio-title: References
biblio-style: authoryear
biblatexoptions: "isbn=false, url=false"
pdfa: 2a
abstract: |
  Streetscape design is an important determinant of the spatial equilibrium in urban areas. Projects that reallocate street space between users create winners and losers, and understanding the impacts of these projects, who bears the costs and benefits, and how they lead to spatial resorting is an important policy question as cities pursue these projects. This project uses a discontinuity in funding awards from the California Active Transportation Program to provide quasi-random variation in the installation of bike lanes, and the removal of vehicle travel lanes and on-street parking. Using this variation, I will estimate the impacts of these treatments on traffic throughput and speeds, visitation to adjacent businesses, crashes, and fatalities. 
---

# Introduction

In recent years, local governments have been spending substantial amounts of funding on changes to street infrastructure. These projects, which use physical changes to the streetscape to reallocate space between uses and modify user behavior, are often justified as improving safety, health, comfort, efficiency, mode share, and emissions. However, streetscape changes like these are often met with fierce opposition, citing impacts to vehicle throughput, increased travel times, decreased parking availability, and reduced access for business deliveries and customers. In addition, street infrastructure is an important determinant of the spatial equilibrium in urban areas. The allocation of road space for various purposes provides amenities to nearby residents, workers, and visitors, enables the provision of other amenities, like outdoor dining or urban art, and impacts travel times. These amenities and disamenities drive changes to the spatial equilibrium of housing markets and the broader urban landscape.

Even when these changes enhance overall social welfare, they are rarely Pareto improvements. For many residents, particularly low income and primarily renter communities, these changes are often viewed as a harbinger of gentrification and displacement after decades of neglect by municipal public works projects. Given the long history of transportation projects in the United States being used to displace Black and brown neighborhoods, low income areas, and other areas deemed to be "blighted," it is important to understand not just the overall costs and benefits of these infrastructure projects, but also their incidence and distribution as they induce spatial equilibrium changes. 

While some existing observational and engineering research has explored the traffic outcomes of these infrastructure changes [@volker2021], little causally identified economic research exists to explore the broader social impacts, perform welfare analyses, or identify incidence. Existing economic research has focused primarily on the impacts of larger transportation and infrastructure projects such as highway projects and subway expansion [@sleiman2021; @gertler2019; @barwick2021; @gendron-carrier2022; @allen2019; @gonzalez-navarro2016; @tsivanidis2019]. This is the first paper (to my knowledge) that estimates causal impacts of streetscape changes like bike lanes, improved pedestrian infrastructure, and other, smaller-scale projects, and connects them to spatial equilibrium changes.

This research should also be of interest to city planners and transportation departments, who are evaluating changes to their street infrastructure. These projects engender strong feelings both for and against, and both proponents and opponents of a given project point to specific outcomes of a given project as a way to support or oppose its construction. A clear causal identification of the effects of these projects would provide key evidence in these discussions, and help planners and users understand how or whether the positive or negative impacts manifest. In this context, a precisely estimated null effect can be just as valuable to policymakers as a finding of significant impact, as it can demonstrate that a desired goal or a feared impact would not likely come to pass. 

To speak to the impacts of these projects, I will pursue several specific research questions. First, what are the impacts of changes to streetscape infrastructure on traffic throughput and speeds, visitors to nearby businesses, and crashes and fatalities? In addition, what are the magnitude and extent of spillovers from these projects, particularly the impacts on traffic, crashes, and business visitation? These first questions together will characterize the set of costs and benefits driven by the projects. 

Next, I will explore the heterogeneity in these effects. Do they differ depending on particular project attributes? Do they accrue differently to local residents than to those coming from farther afield? Do they disproportionately impact those who are just passing through the project area, compared to those who live, work, or visit nearby? How do these differing effects map onto demographic differences, particularly race and household income?

Finally, I will estimate the effects of these projects on spatial equilibrium outcomes. Do the benefits accrue differentially to homeowners and land owners, or do tenants reap benefits as well? How are these changes priced into land values and rents, and thus drive changes in the socioeconomic and racial composition of the surrounding neighborhoods? 

This project uses a regression discontinuity design for identification. Many of these projects receive funding from regional, state, or federal grants, such as California's Active Transportation Program (ATP). This program, and others like it, evaluates submitted projects using a fixed rubric, and assigns each program a numerical score. These funding programs are unable to fund every submitted project, and so define a cutoff score based on the funding available. Projects above the threshold receive funding, while those below the threshold do not receive funding. The funding threshold is not known by the applicants or the evaluators prior to the submission and ranking of the applications, eliminating the possibility of bunching on the running variable.

Receiving funding from any one particular grant program does not guarantee that the project will get built, and cities can proceed with the project using other funds, even if they are denied. Thus, this project will use a fuzzy RD design, with the funding threshold instrumenting for project construction. In addition, application materials include substantial data on baseline conditions for each of the projects, so I will be able to check for pretrends. 

## Literature Review

This project will contribute to several literatures. This project is the first of which I am aware to econometrically estimate the causal impact streetscape improvements, particularly bike lanes. There is an existing literature on the economic impacts of transportation infrastructure, such as [XXX]. However, these papers generally considered the impacts of large-scale transportation infrastructure, like highways [@sleiman2021] and public transit [@tsivanidis2019; @gendron-carrier2022]. @gonzalez-navarro2016 explore the impacts on paving previously unpaved roads on home values. Impacts of bicycle and pedestrian infrastructure have not been well studied in the economics literature. Meanwhile, there have been a variety of published studies in peer-reviewed and gray literature providing observational or engineering estimates of the impacts of bike lanes and other active transportation infrastructure. @volker2021 provide a review of this literature on bike infrastructure's impact on nearby businesses. These studies, primarily observational studies looking at a single project before and after construction, or with an identified control street, tend to find either positive effects on business outcomes or no clear effect. This study is the first to examine a large panel of proposed bicycle and active transportation infrastructure projects, and causally identify their impacts on relevant outcomes.

Next, it will add to a rich literature on spatial sorting and urban geography, particularly how local amenities impact home values and neighborhood demographics. 

# Streetscape Projects Background

## Streetscape Projects Description

In this project, I focus specifically on streets, as distinct from roads or highways. Streets are not just spaces or infrastructure used for transportation and moved through, but are also an important part of a destination itself. The layout and configuration of a street have material impacts on the experience and amenities of a place beyond simply the speed and ease with which travelers can move through it. Streets are complex places, with many attributes that all come together to influence the impact they have on users and occupants. From the number of travel lanes and the lane widths to the state of the sidewalks, to wheelchair cuts and accessibility features, street lighting, trees, benches, and bus stops, all these features come together to impact the experience of the street. For many years, the streets in the United States were designed primarily with single occupancy vehicles in mind. They were designed to move vehicles quickly through the space, and provide fast and easy access to parking. These design choices resulted in degraded experiences for those walking biking or taking public transit through the area. In recent years, cities have been rethinking how they design and allocate Street space and the street scape based on how they impact its users. These projects are designed with a variety of goals in mind, including improving the experience for local residents and business workers the move through the area on foot, reducing greenhouse gas emissions driven by private vehicle use, and improving health, safety, and mode share outcomes. These redesigns of street space come in many forms in or as varied as there are streets to be modified. They often change many attributes at once, but often involve several common features. These projects almost always involve re-allocating space that was previously dedicated to the movement of private vehicles (Such as travel lanes and on street parking) toward other users, by widening sidewalks and defining space dedicated to public transit and bicycles.

Most transportation infrastructure funding in the US is dedicated to private vehicle traffic, primarily allocated by state governments (receiving block grants from the federal Department of Transportation). In contrast, funding for local streetscape improvements are left primarily to the locality (city or county), and is often cobbled together from multiple sources. These projects can be funded through a locality's general street maintenance and paving budget, by a developer providing funding for infrastructure improvements near their projects, or through competitive grant programs. In California in particular, city budgets are often insufficient to fully fund street maintenance and infrastructure improvements as a result of property tax restrictions imposed by Proposition 13 and successor measures. As a result, external funding sources are almost always brought to bear to fund these projects. 

## California Active Transportation Program

The California Active Transportation Program (ATP) is a state funding program jointly administered by the CA Transportation Commission (CTC) and the Department of Transportation (Caltrans). Given the limited funds available to localities for streetscape changes (or even basic road maintenance), the ATP is the primary funding source for many of these types of projects built in the state. The ATP was originally created in 2013 (SB 99), with the goal of increasing active modes of transportation, like walking and biking. The program allocates both state and federal transportation dollars to support these projects, initially funded at approximately $123 million per year, and increased to $XX million annually in 2017, using increased revenues from the state gas tax. Funds have been awarded in five rounds as of 2021, with the sixth round open for applications in 2022. Each funding round includes a statewide component, a component for each of California's eighteen Metropolitan Planning Organizations (MPO), and a component for "small urban and rural" areas that do not fall into an MPO. 

For each funding round, cities and counties submit detailed application packets describing the projects they wish to fund. These application packets include descriptions of the location of the project, the current street conditions, intended changes and attributes of the project, estimated budget and timeline, and whom the project is likely to benefit. Once applications have been submitted, independent evaluators assign scores to each project using a fixed, pre-announced rubric, in categories like whether the project is in a disadvantaged community, the potential to increase the number of users, the potential to reduce collisions, the level of public participation in the planning process, whether the project design is context-sensitive and transformative to the streetscape, and cost effectiveness. Some of the scored items are objective criteria, such as whether the project is located within a disadvantaged community, and the median household income in the project area. Other questions, however, involve the subjective application of a grading rubric to the applicant's response to a question by project evaluators. While the rubrics are published in advance and applicants can structure their applications to maximize their points on this rubric, the score still relies on the subjective assessment of project evaluators, preventing applicants from having precise control over their scores.

The evaluators—volunteers with expertise in active transportation, safe routes to school projects, disadvantaged communities, and equity—are assigned to teams of two, each evaluating a project individually before reaching a consensus on scores for each question. CTC staff also evaluates and scores applications, and CTC, Caltrans, and volunteer evaluators then meet to discuss and review scores. Evaluators are not assigned applications from their county of residence or occupation, are assigned no more than one application from any given jurisdiction, and sign a conflict of interest form. Once individual item scores are evaluated and vetted, they are totaled, yielding an overall score for each project that can range from 0 to 100, usually in integer or half-integer steps. Projects are then ranked according to their score. [@californiatransportationcommission2022]

Because city budgets are often insufficient to fully fund these projects, the ATP receives far more applications from California localities than its budget can support. As a result, once applications have been submitted and scored, ATP staff define a threshold score that corresponds to the exhaustion of the budget for that round. Projects which receive a score above the budget threshold score receive the full requested allocation, while projects whose scores fall below the budget threshold score receive no funding from the ATP. While the CTC provides an estimated amount of funding available in given round when it is opened or applications, the number of applications and the amount of funding requested is not known by applicants, evaluators, or stakeholders until after scores have been finalized. Once scores are finalized, the available budget is used to define a threshold score. This score is not known by anyone until after scores are finalized, including by CTC staff or evaluators. Therefore, while applicants are incentivized to structure their application in order to maximize their score overall, they do not have the information required to precisely manipulate their score specifically around the threshold. Conversations with ATP staff indicate that many more projects are worthy of funding than actually receive funding, and that they believe there is little difference in the quality of projects above the threshold than those slightly below the threshold [@newman-burckhard2022]. 

<!-- Discuss potential for SUTVA violations? -->

# Data Overview

## ATP Projects Data

I (will) have data on the universe of streetscape projects which applied for ATP funding. In addition to the information included in the application packets—the location of the project, the current street conditions, intended changes and attributes of the project, and the estimated budget and timeline—the data include the score assigned to each project, and the current construction status of projects approved for funding, including the date of completion, if completed. The project component data is particularly rich, with detailed variables on many project attributes, such as the length of Class I, II, III, and IV bike lanes installed, length of vehicle travel lanes removed, number of intersections receiving traffic signal upgrades or retiming, number of street lights installed, number of new bike racks installed, and length of sidewalk installed, rebuilt, or widened. While the data include information about project locations, that information is provided as PDF maps, verbal descriptions, and a single latitude/longitude point. In order to match the projects to the outcome data, I generate shapefiles of polygons denoting the right of way in which the project is being built. These shapefiles are built manually using ArcGIS, using the PDF maps of project locations as well as verbal descriptions of their spatial extent.

<!-- sample sizes, discussion of common project attributes -->

Using the ATP projects as the sample does imply some potential sample selection issues, some of which influence the interpretation of the estimated effects, while others may threaten the integrity of the research design. Because this is a sample of projects which localities have actively pursued, the treatment effect might differ from an average treatment effect for a bike lane installed on a randomly chosen street. The localities and streets observed in this dataset might quantitatively differ from a random sample of California streets. Localities which are applying for these funds might already be in the process of gentrifying prior to the construction of the streetscape infrastructure changes, or have other differences from localities which did not apply. While these selection concerns impact the external validity of the results, and how one should interpret the estimated coefficients, it should not lead to bias in the estimates, since identification is from project funding at the score threshold, not whether they submitted an application. 

On the other hand, some localities might be better staffed and more capable of assembling successful funding applications, or might be better able to predict where the funding threshold will be. For example, if a particular locality is submitting a large number of applicants, they would have information about a larger fraction of the overall pool of applications. Similarly, a consultant hired by multiple cities to prepare their applications might have insights into a significant fraction of the applications being submitted. In theory, localities could use this information to manipulate their probability of receiving funding around the threshold score. However, since the threshold is not known in advance by anyone, and evaluators are barred from scoring applications from their home county—and consultants may not serve as evaluators at all—it is unlikely that applicants are able to exercise a sufficient degree of control around the threshold to endanger the research design. While applicants are incentivized to manipulate their applications to increase their scores, the RD research design is only violated if they are able to precisely manipulate their probability of treatment around the threshold. I will explore whether this assumption can be rejected in section X, where I test for bunching on the running variable to detect score manipulation. 

There are two other data concerns that need to be handled. First is the possibility of repeat applications. In my data, I observe five ATP funding rounds. The rounds are operated independently, with a new budget allocation. However, since many projects fail to receive funding in a given round, localities can, and sometimes do, resubmit applications for projects that were previously denied funding. These resubmissions may be unchanged, or localities may modify their proposed project or application materials in order to achieve a higher score. Because these funding rounds are operated independently, and have their own discontinuity thresholds, repeated submissions across rounds should not violate the RD research design. However, since repeatedly submitted projects are not independent, the standard errors may need to be adjusted to correct for that inter-round correlation. 

The other data concern is imperfect treatment compliance. If a project is denied funding, the applicant locality could decide to allocate other funds to the project, and construct it anyway. Conversely, a project awarded funding could face public opposition and fail to be constructed. As described by @angrist1996, this imperfect compliance alters the interpretation of the estimated coefficients, which are now local average treatment effects (LATE), or the average treatment effect on compliers. To estimate these effects, the research design will use a fuzzy RD to instrument for treatment status. This nuance is important, as the always-takers could be crowding out other amenities by reallocating funding to the project, which could distort the treatment effect. 

<!-- Figure out how two-step funding process works (do most MPOs let CTC administer?), whether that impacts RD design -->

## Outcome Data

To estimate the outcomes of these infrastructure projects, I will use several different data sources. The first is data on visitation to business and other points of interest from [SafeGraph](https://safegraph.com/), a data company that aggregates anonymized location data from numerous applications in order to provide insights about physical places, via the SafeGraph Community. To enhance privacy, SafeGraph excludes census block group information if fewer than five devices visited an establishment in a month from a given census block group. SafeGraph define points of interest (POI), which are specific physical locations that a person might find interesting. POIs can be any physical place humans can visit except single-family homes. SafeGraph categorizes these POIs using the North American Industry Classification System (NAICS) developed by the US Census Bureau to identify different types and purposes of places. The SafeGraph data provide weekly and monthly counts of visitors to points of interest which I can match to the locations of proposed streetscape projects. The counts are based on a sample of mobile phone users, and thus are normalized and weighted to reflect the population as a whole [@safegraph2022]. 

For traffic outcomes, I will use data from [Streetlight Data](https://www.streetlightdata.com). Their data provide traffic speeds and throughput on specified road segments by day of month or hour of day, averaged monthly or annually. Traffic crash and fatality data will be from the Transportation Injury Mapping System (TIMS) [@TIMS2022], which sources its data from California's [Statewide Integrated Traffic Records System (SWITRS)](https://www.chp.ca.gov/programs-services/services-information/switrs-internet-statewide-integrated-traffic-records-system). SWITRS records all crashes reported to the California Highway Patrol, including those reported by local agencies and city police departments. It contains geocoded data mapping all reported crashes in California, including the location, time, involved vehicles, severity, and the number of people injured or killed. 

In addition, I will ultimately be exploring outcomes on housing, land values, and spatial sorting equilibria. I have yet to identify a specific dataset or datasets to use for these outcomes, but hope to be able to observe land values and real estate prices, commercial rental rates, and residential moves or displacement. 

## Power Analysis

I will perform some initial calculations with the outcome data I have on hand, in order to get a sense of the available power of my estimators. To perform this analysis, I will need to select the relevant spatial subset of the outcome data that matches with the projects being considered. This data construction will give me at least an approximation of the sample I will have available to me. In order to do this preliminary analysis before I have generated the precise polygons of the project location, I will use the GPS coordinates of each project and simply match locations within a fixed radius of a project. That set of outcome data will be used for preliminary power analysis.

Once I have constructed a dataset of project locations and associated outcome variables, I will specify some placebo "post-treatment" time periods (without the construction having actually occurred) and estimate the treatment effect of this placebo. The standard error on this placebo estimate will give me some sense of the effect size I would be able to detect given my sample. I can perform this analysis for each of the relevant outcome variables being considered.

# Identification and Empirical Strategy

Estimating unbiased causal impacts of streetscape infrastructure changes is challenging because these expensive infrastructure projects are rarely assigned in a plausibly random manner to streets. Cities are highly selective about which streets received which changes based on both observable and unobservable (to the researcher) features. To overcome these selection effects, I implement a regression discontinuity (RD) design using features of the Active Transportation Program funding process. This design, initially introduced by @thistlethwaite1960 and fully described by @lee2010, provides local randomization around the funding threshold, allowing for causal identification of a treatment effect. In this section, I will discuss the research design and accompanying empirical strategy more fully, and describe several tests that will be used to verify the validity of this approach in my setting. 

The ATP awards funding to streetscape projects with scores above a threshold defined by the funding allocated by the California legislature. Applicants can manipulate their application packets in order to yield higher scores based on the publicly announced rubric. However, many questions are qualitative, and leave room for the discretion of the application evaluators. This discretion implies that applicants do not have precise control over their scores. In particular, they do not have precise control over their scores around the threshold, since the threshold is not known until after projects have been submitted and scored. In addition, scores range from 0 to 100, with any integer score possible in that range, and half-integer scores appearing occasionally. While the distribution of scores is not strictly continuous, this high density of potential values can be safely approximated as a continuous density of scores from 0 to 100. As described by @lee2010, taken together, this imprecise control over an approximately continuous running variable (the score) implies that the treatment is as good as randomly assigned around the cutoff. This local random assignment implies that we can identify a treatment effect using the discontinuity gap at the cutoff.

Because the treatment probability does not sharply jump from 0 to 1 at the threshold—funded projects could fail to be constructed, and denied projects could be constructed using other funds—this research design will use a "fuzzy" RD approach. As a result, the treatment effect identified will be a weighted local average treatment effect (LATE). The LATE estimates the average treatment effect for compliers (in the language of @angrist1996): those who construct the project if funded, and those who do not construct the project if not funded. The weights for this weighted LATE are the ex-ante likelihood that an applicant's score is close to the threshold (conditional on observables). The LATE estimation requires two additional assumptions: monotonicity (no defiers who would construct the project if denied funding, but would not construct if awarded funding) and excludability (crossing the score threshold can only impact the outcome via the treatment). While these assumptions cannot be proven to hold, I can provide evidence to support them, and the broader validity of the research design. 

## graphical representation

- choice of graphical bandwidth (L&L § 4.1)
	- cross validation approach
	- tests of bias
- continuity of the density of the running variable (manipulation test, L&L § 4.4.1)
	- histogram of the running variable (no smoothed polynomial estimate)
	- McCrary (2008) test
- continuity of covariates on the running variable across the funding threshold (balance test, L&L § 4.4.2)
	- for a large number of covariates, use a Seemingly Unrelated Regression, use Chi-squared joint test
- probability of treatment on the running variable across the threshold
	- show the magnitude in probability jump in a fuzzy setting
- discontinuity of the outcome variable across the threshold
	- plot binned individuals (non-overlapping bins)
	- plot polynomial fit line

## Regression specification

- parametric or nonparametric? (L&L § 4.2.1)
	- robustness tests
		- robust to polynomial specifications of the running variable (and covariates)
		- robust to different window widths around the cutoff (local linear regression)
	- separate regressions on either side of the cutoff point (or pooled regression with 
	  full interactions with treatment)
	- local linear regression: choice of estimation bandwidth (L&L § 4.3.1)
		- Cross validation (leave one out) and rule of thumb approaches
		- look at graphs first: outcomes with a great deal of curvature are more likely 
		  to be sensitive to the choice of bandwidth due to larger bias from larger bandwidths
	- local polynomial modeling (L&L § 4.3.2)
		- choice of polynomial order
			- compare to nonparametric bins used for graphical analysis: add higher order 
			  terms until bin dummies are no longer jointly significant
			- also acts as a test for the presence of discontinuities away from the cutoff
			- can also use AIC to inform order choice
			- be wary of overfitting: compensate with lower order polynomials with smaller bandwidths
- Fuzzy estimation (L&L § 4.3.3)
	 - 2SLS estimation (use the same bandwidth/polynomial order for both stages)
		- choose bandwidth/order for outcome equation, then use the same bandwidth for the first stage
- inclusion of covariates (L&L § 4.5)
	- Residualize out the covariates
		- has the potential to yield higher standard errors than the homogeneous regression
		- allows a test of appropriate functional form
	- Include the covariates in the specification
		- guarantees tighter standard errors (with a consistent estimator)
		- but cannot distinguish between improper specification and discontinuities in the covariates
	- show robustness of treatment effect to inclusion/residualization/exclusion of covariates
- leverage panel structure? Differences in discontinuities?
	- usually employed only to difference out an effect of one treatment when multiple treatments
	  turn on at the discontinuity
	- could potentially be used to increase precision beyond just inclusion of lagged outcome variables?
	- can the panel structure be used to incorporate the multiple rounds/discontinuities?
- standard errors/clustering (L&L § 4.3.4)
	- 2SLS robust standard errors
	- what's the right level for clustering?
- incorporation of multiple rounds/discontinuities? 

