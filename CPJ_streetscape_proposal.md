---
title: Streetscape Changes and Infrastructure Equity
subtitle: Fisher Center Research Grant Program Proposal
date: Spring 2022
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
---

# Motivation

In recent years, local governments have been spending substantial amounts of funding on changes to street infrastructure. These projects, which use physical changes to the streetscape to reallocate space between uses and modify user behavior, are often justified as improving safety, health, comfort, efficiency, mode share, and emissions. However, streetscape changes like these are often met with fierce opposition, citing impacts to vehicle throughput, increased travel times, decreased parking availability, and reduced access for business deliveries and customers. In addition, street infrastructure is an important determinant of the spatial equilibrium in urban areas. The allocation of road space for various purposes provides amenities to nearby residents, workers, and visitors, enables the provision of other amenities, like outdoor dining or urban art, and impacts travel times. These amenities and disamenities drive changes to the spatial equilibrium of housing markets and the broader urban landscape.

Even when these changes enhance overall social welfare, they are rarely Pareto improvements. For many residents, particularly low income and primarily renter communities, these changes are often viewed as a harbinger of gentrification and displacement after decades of neglect by municipal public works projects. Given the long history of transportation projects in the United States being used to displace Black and brown neighborhoods, low income areas, and other areas deemed to be "blighted," it is important to understand not just the overall costs and benefits of these infrastructure projects, but also their incidence and distribution as they induce spatial equilibrium changes. 

While some existing observational and engineering research has explored the traffic outcomes of these infrastructure changes [@volker2021], little causally identified economic research exists to explore the broader social impacts, perform welfare analyses, or identify incidence. Existing economic research has focused primarily on the impacts of larger transportation and infrastructure projects such as highway projects and subway expansion [@sleiman2021; @gertler2019; @barwick2021; @gendron-carrier2022; @allen2019; @gonzalez-navarro2016; @tsivanidis2019]. This is the first paper (to my knowledge) that estimates causal impacts of streetscape changes like bike lanes, improved pedestrian infrastructure, and other, smaller-scale projects, and connects them to spatial equilibrium changes.

This research should also be of interest to city planners and transportation departments, who are evaluating changes to their street infrastructure. These projects engender strong feelings both for and against, and both proponents and opponents of a given project point to specific outcomes of a given project as a way to support or oppose its construction. A clear causal identification of the effects of these projects would provide key evidence in these discussions, and help planners and users understand how or whether the positive or negative impacts manifest. In this context, a precisely estimated null effect can be just as valuable to policymakers as a finding of significant impact, as it can demonstrate that a desired goal or a feared impact would not likely come to pass. 

# Research Question and Approach

To speak to the impacts of these projects, I will pursue several specific research questions. First, what are the impacts of changes to streetscape infrastructure on traffic throughput and speeds, visitors to nearby businesses, and crashes and fatalities? In addition, what are the magnitude and extent of spillovers from these projects, particularly the impacts on traffic, crashes, and business visitation? These first questions together will characterize the set of costs and benefits driven by the projects. 

Next, I will explore the heterogeneity in these effects. Do they differ depending on particular project attributes? Do they accrue differently to local residents than to those coming from farther afield? Do they disproportionately impact those who are just passing through the project area, compared to those who live, work, or visit nearby? How do these differing effects map onto demographic differences, particularly race and household income?

Finally, I will estimate the effects of these projects on spatial equilibrium outcomes. Do the benefits accrue differentially to homeowners and land owners, or do tenants reap benefits as well? How are these changes priced into land values and rents, and thus drive changes in the socioeconomic and racial composition of the surrounding neighborhoods? 

To answer these questions, I will use a regression discontinuity design for identification. Many of these projects receive funding from regional, state, or federal grants, such as California's Active Transportation Program (ATP). This program, and others like it, evaluates submitted projects using a fixed rubric, and assigns each program a numerical score. These funding programs are unable to fund every submitted project, and so define a cutoff score based on the funding available. Projects above the threshold receive funding, while those below the threshold do not receive funding. The funding threshold is not known by the applicants or the evaluators prior to the submission and ranking of the applications, eliminating the possibility of bunching on the running variable.

Receiving funding from any one particular grant program does not guarantee that the project will get built, and cities can proceed with the project using other funds, even if they are denied. Thus, this project will use a fuzzy RD design, with the funding threshold instrumenting for project construction. In addition, application materials include substantial data on baseline conditions for each of the projects, so I will be able to check for pretrends. 

# Data Overview

I will have data on the universe of streetscape projects which applied for ATP funding. I will have access to the information included in the application packets: the location of the project, the current street conditions, intended changes and attributes of the project, and the estimated budget and timeline. The project component data is particularly rich, with detailed variables on many project attributes, such as the length of Class I, II, III, and IV bike lanes installed, length of vehicle travel lanes removed, number of intersections receiving traffic signal upgrades or retiming, number of street lights installed, number of new bike racks installed, and length of sidewalk installed, rebuilt, or widened. In addition to the application contents, the data include the score assigned to each project, and the current construction status of projects approved for funding, including the date of completion, if completed. While the data include information about project locations, that information is provided as PDF maps, verbal descriptions, and a single latitude/longitude point. In order to match the projects to the outcome data, I will generate shapefiles of polygons denoting the right of way in which the project is being built. These shapefiles will be built manually using ArcGIS, using the PDF maps of project locations as well as verbal descriptions of their spatial extent.

To estimate the outcomes of these infrastructure projects, I will use several different data sources. The first is data on visitation to business and other points of interest from [SafeGraph](https://safegraph.com/), a data company that aggregates anonymized location data from numerous applications in order to provide insights about physical places, via the SafeGraph Community. To enhance privacy, SafeGraph excludes census block group information if fewer than five devices visited an establishment in a month from a given census block group. The SafeGraph data provide weekly and monthly counts of visitors to points of interest which I can match to the locations of proposed streetscape projects. The counts are based on a sample of mobile phone users, and thus are normalized and weighted to reflect the population as a whole. 

For traffic outcomes, I will use data from [Streetlight Data](https://www.streetlightdata.com). Their data provide traffic speeds and throughput on specified road segments by day of month or hour of day, averaged monthly or annually. Traffic crash and fatality data will be from the Transportation Injury Mapping System (TIMS) [@TIMS2022], which sources its data from California's [Statewide Integrated Traffic Records System (SWITRS)](https://www.chp.ca.gov/programs-services/services-information/switrs-internet-statewide-integrated-traffic-records-system). SWITRS records all crashes reported to the California Highway Patrol, including those reported by local agencies and city police departments. It contains geocoded data mapping all reported crashes in California, including the location, time, involved vehicles, severity, and the number of people injured or killed. 

In addition, I will ultimately be exploring outcomes on housing, land values, and spatial sorting equilibria. I have yet to identify a specific dataset or datasets to use for these outcomes, but hope to observe land values and real estate prices, commercial rental rates, and residential moves or displacement.

These research funds will allow me to spend more time focusing on this research rather than teaching. In addition, I may use it to purchase additional data for my analyses, or hire undergraduate research assistants to aid in the creation of the shapefiles in ArcGIS, and other analytic tasks. 
