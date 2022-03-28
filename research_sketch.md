---
title: Equity of Streetscape Changes
author: Connor P. Jackson
lang: en
output: word_document
linkcolor: blue
urlcolor: blue
abstract: |
	Reconfiguring street infrastucture is rarely a Pareto-improving change, 
---

# Research Question

## Big Picture

In recent years, local governments have been spending substantial amounts of funding on changes to street infrastructure. These projects, which use physical changes to the streetscape to reallocate space between uses and modify user behavior, are often justified as improving safety, health, comfort, efficiency, mode share, and emissions. However, streetscape changes like these are often met with fierce opposition, citing impacts to vehicle throughput, increased travel times, decreases in parking, and reduced access for business deliveries and customers. In addition, these changes have often been seen as a harbinger of gentrification and displacement in communities which have long been neglected by municipal public works projects. Given the long history of transportation projects in the United States being used to displace Black and brown neighborhoods, low income areas, and other areas deemed to be "blighted," it is important to understand not just the overall costs and benefits of these infrastructure projects, but also their incidence and distribution. While some existing observational and engineering research has explored the traffic outcomes of these infrastructure changes, little causally identified economic research exists to explore the broader social impacts, perform welfare analyses, or identify incidence. 

These projects can include a variety of different components, which might reasonably have different effects. To focus on the most common and potentially most impactful street changes, I will look specifically at projects that remove a general traffic lane, add a bike lane, or remove on-street parking. 

## Research Question

To speak to the impacts of these projects, I will pursue several specific research questions. First, what are the impacts of bike lane creation or traffic lane or parking removals on traffic throughput and speeds, bus ridership, bicycle use, visitors and revenue of nearby businesses, and crashes and fatalities? In addition, what are the magnitude and extent of spillovers from these projects, particularly the impacts on traffic, crashes, and businesses? These first questions will characterize the set of costs and benefits driven by the project. 

What is the heterogeneity in these effects? Are they different for local residents than those coming from farther afield? Do they disproportionately impact those who are just passing through the project area, compared to those who live, work, or visit nearby? How do these differing effects map onto demographic differences, particularly race and household income? Do these projects drive changes in the socioeconomic and racial composition of the surrounding neighborhoods? 

[Can I do any explicit welfare analysis? What assumptions on utility will I need to make?]

## Identification Strategy

This project uses a regression discontinuity design for identification. Many of these projects receive funding from regional, state, or federal grants, such as California's Active Transportation Program. This program, and others like it, evaluates submitted projects using a fixed rubric, and assigns each program a numerical score. These funding programs are unable to fund every submitted project, and so define a cutoff score based on the funding available. Projects above the threshold receive funding, while those below the threshold do not receive funding. The funding threshold is not known by the applicants or the evaluators prior to the submission and ranking of the applications, eliminating the possibility of bunching on the running variable.

Receiving funding from any one particular grant program does not guarantee that the project will get built, and cities can proceed with the project using other funds, even if they are denied. Thus, this project will use a fuzzy RD design, with the funding threshold instrumenting for project construction. In addition, application materials include substantial data on baseline conditions for each of the projects, so I will be able to check for pretrends. 

## Econometric Approach


# Power Analysis

I will perform some initial calculations with the outcome data I have on hand, in order to get a sense of the available power of my estimators. To perform this analysis, I will need to select the relevant spatial subset of the outcome data that matches with the projects being considered. This data construction will give me at least an approximation of the sample I will have available to me. In order to do this preliminary analysis before I have generated the precise polygons of the project location, I will use the GPS coordinates of each project and simply match locations within a fixed radius of a project. That set of outcome data will be used for preliminary power analysis.

Once I have constructed a dataset of project locations and associated outcome variables, I will specify some placebo "post-treatment" time periods (without the construction having actually occurred) and estimate the treatment effect of this placebo. The standard error on this placebo estimate will give me some sense of the effect size I would be able to detect given my sample. I can perform this analysis for each of the relevant outcome variables being considered.


