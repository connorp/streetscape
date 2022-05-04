---
title: Streetscape Changes and Infrastructure Equity
author: Connor P. Jackson
lang: en
output: word_document
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

## Big Picture

In recent years, local governments have been spending substantial amounts of funding on changes to street infrastructure. These projects, which use physical changes to the streetscape to reallocate space between uses and modify user behavior, are often justified as improving safety, health, comfort, efficiency, mode share, and emissions. However, streetscape changes like these are often met with fierce opposition, citing impacts to vehicle throughput, increased travel times, decreased parking availability, and reduced access for business deliveries and customers. In addition, street infrastructure is an important determinant of the spatial equilibrium in urban areas. The allocation of road space for various purposes provides amenities to nearby residents, workers, and visitors, enables the provision of other amenities, like outdoor dining or urban art, and impacts travel times. These amenities and disamenities drive changes to the spatial equilibrium of housing markets and the broader urban landscape.

Even when these changes enhance overall social welfare, they are rarely Pareto improvements. For many residents, particularly low income and primarily renter communities, these changes are often viewed as a harbinger of gentrification and displacement after decades of neglect by municipal public works projects. Given the long history of transportation projects in the United States being used to displace Black and brown neighborhoods, low income areas, and other areas deemed to be "blighted," it is important to understand not just the overall costs and benefits of these infrastructure projects, but also their incidence and distribution as they induce spatial equilibrium changes. 

While some existing observational and engineering research has explored the traffic outcomes of these infrastructure changes [@volker2021], little causally identified economic research exists to explore the broader social impacts, perform welfare analyses, or identify incidence. Existing economic research has focused primarily on the impacts of larger transportation and infrastructure projects such as highway projects and subway expansion [@sleiman2021; @gertler2019; @barwick2021; @gendron-carrier2022; @allen2019; @gonzalez-navarro2016; @tsivanidis2019]. This is the first paper (to my knowledge) that estimates causal impacts of streetscape changes like bike lanes, improved pedestrian infrastructure, and other, smaller-scale projects, and connects them to spatial equilibrium changes.

This research should also be of interest to city planners and transportation departments, who are evaluating changes to their street infrastructure. These projects engender strong feelings both for and against, and both proponents and opponents of a given project point to specific outcomes of a given project as a way to support or oppose its construction. A clear causal identification of the effects of these projects would provide key evidence in these discussions, and help planners and users understand how or whether the positive or negative impacts manifest. In this context, a precisely estimated null effect can be just as valuable to policymakers as a finding of significant impact, as it can demonstrate that a desired goal or a feared impact would not likely come to pass. 

## Research Question

To speak to the impacts of these projects, I will pursue several specific research questions. First, what are the impacts of changes to streetscape infrastructure on traffic throughput and speeds, visitors to nearby businesses, and crashes and fatalities? In addition, what are the magnitude and extent of spillovers from these projects, particularly the impacts on traffic, crashes, and business visitation? These first questions together will characterize the set of costs and benefits driven by the projects. 

Next, I will explore the heterogeneity in these effects. Do they differ depending on particular project attributes? Do they accrue differently to local residents than to those coming from farther afield? Do they disproportionately impact those who are just passing through the project area, compared to those who live, work, or visit nearby? How do these differing effects map onto demographic differences, particularly race and household income?

Finally, I will estimate the effects of these projects on spatial equilibrium outcomes. Do the benefits accrue differentially to homeowners and land owners, or do tenants reap benefits as well? How are these changes priced into land values and rents, and thus drive changes in the socioeconomic and racial composition of the surrounding neighborhoods? 

## Identification Strategy

This project uses a regression discontinuity design for identification. Many of these projects receive funding from regional, state, or federal grants, such as California's Active Transportation Program (ATP). This program, and others like it, evaluates submitted projects using a fixed rubric, and assigns each program a numerical score. These funding programs are unable to fund every submitted project, and so define a cutoff score based on the funding available. Projects above the threshold receive funding, while those below the threshold do not receive funding. The funding threshold is not known by the applicants or the evaluators prior to the submission and ranking of the applications, eliminating the possibility of bunching on the running variable.

Receiving funding from any one particular grant program does not guarantee that the project will get built, and cities can proceed with the project using other funds, even if they are denied. Thus, this project will use a fuzzy RD design, with the funding threshold instrumenting for project construction. In addition, application materials include substantial data on baseline conditions for each of the projects, so I will be able to check for pretrends. 

## Literature Review

# Streetscape Projects Background

## Streetscape Projects Description

In this project, I focus specifically on streets, as distinct from roads or highways. Streets are not just spaces or infrastructure used for transportation and moved through, but are also an important part of a destination itself. The layout and configuration of a street have material impacts on the experience and amenities of a place beyond simply the speed and ease with which travelers can move through it. Streets are complex places, with many attributes that all come together to influence the impact they have on users and occupants. From the number of travel lanes and the lane widths to the state of the sidewalks, to wheelchair cuts and accessibility features, street lighting, trees, benches, and bus stops, all these features come together to impact the experience of the street. For many years, the streets in the United States were designed primarily with single occupancy vehicles in mind. They were designed to move vehicles quickly through the space, and provide fast and easy access to parking. These design choices resulted in degraded experiences for those walking biking or taking public transit through the area. In recent years, cities have been rethinking how they design and allocate Street space and the street scape based on how they impact its users. These projects are designed with a variety of goals in mind, including improving the experience for local residents and business workers the move through the area on foot, reducing greenhouse gas emissions driven by private vehicle use, and improving health, safety, and mode share outcomes. These redesigns of street space come in many forms in or as varied as there are streets to be modified. They often change many attributes at once, but often involve several common features. These projects almost always involve re-allocating space that was previously dedicated to the movement of private vehicles (Such as travel lanes and on street parking) toward other users, by widening sidewalks and defining space dedicated to public transit and bicycles.

Most transportation infrastructure funding in the US is dedicated to private vehicle traffic, primarily allocated by state governments (receiving block grants from the federal Department of Transportation). In contrast, funding for local streetscape improvements are left primarily to the locality (city or county), and is often cobbled together from multiple sources. These projects can be funded through a locality's general street maintenance and paving budget, by a developer providing funding for infrastructure improvements near their projects, or through competitive grant programs. In California in particular, city budgets are often insufficient to fully fund street maintenance and infrastructure improvements as a result of property tax restrictions imposed by Proposition 13 and successor measures. As a result, external funding sources are almost always brought to bear to fund these projects. 

## California Active Transportation Program

The California Active Transportation Program (ATP) is a state funding program jointly administered by the CA Transportation Commission (CTC) and the Department of Transportation (Caltrans). Given the limited funds available to localities for streetscape changes (or even basic road maintenance), the ATP is the primary funding source for many of these types of projects built in the state. The ATP was originally created in 2013 (SB 99), with the goal of increasing active modes of transportation, like walking and biking. The program allocates both state and federal transportation dollars to support these projects, initially funded at approximately $123 million per year, and increased to $XX million annually in 2017, using increased revenues from the state gas tax. Funds have been awarded in five rounds as of 2021, with the sixth round open for applications in 2022. Each funding round includes a statewide component, a component for each of California's eighteen Metropolitan Planning Organizations (MPO), and a component for "small urban and rural" areas that do not fall into an MPO. 

For each funding round, cities and counties submit detailed application packets describing the projects they wish to fund. These application packets include descriptions of the location of the project, the current street conditions, intended changes and attributes of the project, estimated budget and timeline, and whom the project is likely to benefit. Once applications have been submitted, independent evaluators assign scores to each project using a fixed, pre-announced rubric, in categories like whether the project is in a disadvantaged community, the potential to increase the number of users, the potential to reduce collisions, the level of public participation in the planning process, whether the project design is context-sensitive and transformative to the streetscape, and cost effectiveness. These scores are totaled, yielding an overall score for each project that can range from 0 to 100. 

<!-- Are projects scored by multiple people? Are there protections against conflicts of interest of evaluators? -->

Because city budgets are often insufficient to fully fund these projects, the ATP receives far more applications from California localities than its budget can support. As a result, once applications have been submitted and scored, ATP staff define a threshold score that corresponds to the exhaustion of the budget for that round. Projects which receive a score above the budget threshold score receive the full requested allocation, while projects whose scores fall below the budget threshold score receive no funding from the ATP. The budget threshold is not known until after all the projects have been submitted. Therefore, while applicants are incentivized to structure their application in order to maximize their score overall, they do not have the information required to manipulate their score specifically around the threshold. Conversations with ATP staff indicate that many more projects are worthy of funding than actually receive funding, and that they believe there is little difference in the quality of projects above the threshold than those slightly below the threshold. 

<!-- ATP budgets are set by the legislature, and are not set until after the applications have been submitted and scored, correct? -->

# Data Overview

## ATP Projects Data

I (will) have data on the universe of streetscape projects which applied for ATP funding. In addition to the information included in the application packets—the location of the project, the current street conditions, intended changes and attributes of the project, and the estimated budget and timeline—the data include the score assigned to each project, and the current construction status of projects approved for funding, including the date of completion, if completed. The project component data is particularly rich, with detailed variables on many project attributes, such as the length of Class I, II, III, and IV bike lanes installed, length of vehicle travel lanes removed, number of intersections receiving traffic signal upgrades or retiming, number of street lights installed, number of new bike racks installed, and length of sidewalk installed, rebuilt, or widened. While the data include information about project locations, that information is provided as PDF maps, verbal descriptions, and a single latitude/longitude point. In order to match the projects to the outcome data, I generate shapefiles of polygons denoting the right of way in which the project is being built. These shapefiles are built manually using ArcGIS, using the PDF maps of project locations as well as verbal descriptions of their spatial extent.

<!-- sample sizes, discussion of common project attributes -->

- selection issues? 
	- some cities more capable of putting together good applications (holding project quality fixed)
	- are cities that submit projects already gentrifying? 
	- differential ability to predict where the funding threshold will be
		- perhaps the consultants prepping these projects work for multiple cities? 
		- do last year's awards predict this year's probability of success?

- look for evaluation criteria that involve a level of judgment and are not just direct 
  numerical rules based on the application
	- implies that applicants do not have precise control over their scores
	
- identifying/handling repeat submissions, always/never takers

## Outcome Data

To estimate the outcomes of these infrastructure projects, I will use several different data sources. The first is data on visitation to business and other points of interest from [SafeGraph](https://safegraph.com/), a data company that aggregates anonymized location data from numerous applications in order to provide insights about physical places, via the SafeGraph Community. To enhance privacy, SafeGraph excludes census block group information if fewer than five devices visited an establishment in a month from a given census block group. The SafeGraph data provide weekly and monthly counts of visitors to points of interest which I can match to the locations of proposed streetscape projects. The counts are based on a sample of mobile phone users, and thus are normalized and weighted to reflect the population as a whole. 

- Safegraph
	- describe POIs, NAICS categorization
	- sampling, standard errors

For traffic outcomes, I will use data from [Streetlight Data](https://www.streetlightdata.com). Their data provide traffic speeds and throughput on specified road segments by day of month or hour of day, averaged monthly or annually. Traffic crash and fatality data will be from the Transportation Injury Mapping System (TIMS) [@TIMS2022], which sources its data from California's [Statewide Integrated Traffic Records System (SWITRS)](https://www.chp.ca.gov/programs-services/services-information/switrs-internet-statewide-integrated-traffic-records-system). SWITRS records all crashes reported to the California Highway Patrol, including those reported by local agencies and city police departments. It contains geocoded data mapping all reported crashes in California, including the location, time, involved vehicles, severity, and the number of people injured or killed. 

In addition, I will ultimately be exploring outcomes on housing, land values, and spatial sorting equilibria. I have yet to identify a specific dataset or datasets to use for these outcomes, but hope to be able to observe land values and real estate prices, commercial rental rates, and residential moves or displacement. 

## Power Analysis

I will perform some initial calculations with the outcome data I have on hand, in order to get a sense of the available power of my estimators. To perform this analysis, I will need to select the relevant spatial subset of the outcome data that matches with the projects being considered. This data construction will give me at least an approximation of the sample I will have available to me. In order to do this preliminary analysis before I have generated the precise polygons of the project location, I will use the GPS coordinates of each project and simply match locations within a fixed radius of a project. That set of outcome data will be used for preliminary power analysis.

Once I have constructed a dataset of project locations and associated outcome variables, I will specify some placebo "post-treatment" time periods (without the construction having actually occurred) and estimate the treatment effect of this placebo. The standard error on this placebo estimate will give me some sense of the effect size I would be able to detect given my sample. I can perform this analysis for each of the relevant outcome variables being considered.

# Identification and Empirical Strategy

- discussion of Lee & Lemieux RD checklist paper

- Fuzzy RD/Difference in discontinuities
	- imprecise control implies local randomization
	- estimate: weighted LATE
		- weighted average treatment effect for compliers
		- weights are the ex-ante likelihood that an individual's realization of the running variable is close to the threshold
		- required assumptions for fuzzy RD: monotonicity and excludability
	- review Lee & Lemieux § 4.4
	- choice of graphical bandwidth (L&L § 4.1)
		- cross validation approach
		- tests of bias

- graphical representation
	- continuity of covariates on the running variable across the funding threshold (balance test, L&L § 4.4.2)
		- for a large number of covariates, use a Seemingly Unrelated Regression, use Chi-squared joint test
	- continuity of the density of the running variable (manipulation test, L&L § 4.4.1)
		- McCrary (2008) test
	- probability of treatment on the running variable across the threshold
		- show the magnitude in probability jump in a fuzzy setting
	- discontinuity of the outcome variable across the threshold
		- plot binned individuals
		- plot polynomial fit line
	
- Regression specification
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
		- 
		
		

- standard errors/clustering (L&L § 4.3.4)
	- 2SLS fuzzy standard errors
	- what's the right level for clustering? 
	- incorporate sampling uncertainty from safegraph and streetlight? 

- incorporation of multiple rounds/discontinuities? 

