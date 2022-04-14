---
title: Streetscape Changes and Infrastructure Equity
author: Connor P. Jackson
lang: en
output: word_document
linkcolor: blue
urlcolor: blue
abstract: |
	Streetscape design is an important determinant of the spatial equilibrium in urban areas. Projects that reallocate street space between users create winners and losers, and understanding the impacts of these projects, who bears the costs and benefits, and how they lead to spatial resorting is an important policy question as cities pursue these projects. This project uses a discontinuity in funding awards from the California Active Transportation Program to provide quasi-random variation in the installation of bike lanes, and the removal of vehicle travel lanes and on-street parking. Using this variation, I will estimate the impacts of these treatments on traffic throughput and speeds, visitation to adjacent businesses, crashes, and fatalities. 
---

# Introduction

## Big Picture

- spatial equilibrium
- first to estimate the effects of streetscape changes, bike lanes
- some research on fewer, bigger projects, but very little on cumulative effect of little projects
- null effects are still interesting (if precisely estimated)

In recent years, local governments have been spending substantial amounts of funding on changes to street infrastructure. These projects, which use physical changes to the streetscape to reallocate space between uses and modify user behavior, are often justified as improving safety, health, comfort, efficiency, mode share, and emissions. However, streetscape changes like these are often met with fierce opposition, citing impacts to vehicle throughput, increased travel times, decreases in parking, and reduced access for business deliveries and customers. In addition, these changes have often been seen as a harbinger of gentrification and displacement in communities which have long been neglected by municipal public works projects. Given the long history of transportation projects in the United States being used to displace Black and brown neighborhoods, low income areas, and other areas deemed to be "blighted," it is important to understand not just the overall costs and benefits of these infrastructure projects, but also their incidence and distribution. While some existing observational and engineering research has explored the traffic outcomes of these infrastructure changes, little causally identified economic research exists to explore the broader social impacts, perform welfare analyses, or identify incidence. 

These projects can include a variety of different components, which might reasonably have different effects. To focus on the most common and potentially most impactful street changes, I will look specifically at projects that remove a general traffic lane, add a bike lane, or remove on-street parking. 

## Research Question

To speak to the impacts of these projects, I will pursue several specific research questions. First, what are the impacts of bike lane creation or traffic lane or parking removals on traffic throughput and speeds, bus ridership, bicycle use, visitors and revenue of nearby businesses, and crashes and fatalities? In addition, what are the magnitude and extent of spillovers from these projects, particularly the impacts on traffic, crashes, and businesses? These first questions will characterize the set of costs and benefits driven by the project. 

What is the heterogeneity in these effects? Are they different for local residents than those coming from farther afield? Do they disproportionately impact those who are just passing through the project area, compared to those who live, work, or visit nearby? How do these differing effects map onto demographic differences, particularly race and household income? Do these projects drive changes in the socioeconomic and racial composition of the surrounding neighborhoods? 

## Identification Strategy

This project uses a regression discontinuity design for identification. Many of these projects receive funding from regional, state, or federal grants, such as California's Active Transportation Program. This program, and others like it, evaluates submitted projects using a fixed rubric, and assigns each program a numerical score. These funding programs are unable to fund every submitted project, and so define a cutoff score based on the funding available. Projects above the threshold receive funding, while those below the threshold do not receive funding. The funding threshold is not known by the applicants or the evaluators prior to the submission and ranking of the applications, eliminating the possibility of bunching on the running variable.

Receiving funding from any one particular grant program does not guarantee that the project will get built, and cities can proceed with the project using other funds, even if they are denied. Thus, this project will use a fuzzy RD design, with the funding threshold instrumenting for project construction. In addition, application materials include substantial data on baseline conditions for each of the projects, so I will be able to check for pretrends. 

## Literature Review

# Streetscape Projects Background

## Streetscape Projects Description

- purpose
- types
- justification
- funding

## California Active Transportation Program

- describe funding, evaluation, and awards process
	- budget threshold not known ex ante
	- lots of projects close to threshold, per staff
	- scores from 0–100, with high fidelity
- 5 rounds of funding available, statewide, MPO, and small urban/rural categories
- repeat submissions?
- selection issues? 
	- some cities more capable of putting together good applications (holding project quality fixed)
	- are cities that submit projects already gentrifying? 
	- differential ability to predict where the funding threshold will be
		- perhaps the consultants prepping these projects work for multiple cities? 
		- do last year's awards predict this year's probability of success? 
- projects that get built anyway
	- Prop 13 context: this is the main way cities get these projects funded
	- if cities do use other funds to build these, is there a crowding out of other amenities? 

# Data Overview

## ATP Projects Data

- discussion of Lee & Lemieux RD checklist paper
- sample sizes, discussion of common project attributes
- construction status (data from Caltrans?)
- location polygon construction
	- radius around polygons for Safegraph matching (maybe this belongs in a data appendix instead)
- identifying/handling repeat submissions, always/never takers

## Outcome Data

- Safegraph
	- describe POIs, NAICS categorization
	- sampling, standard errors
- Streetlight
- SWITRS/TOMS
- Land values/commercial rents
	- describe goals, potential data sources
	
# Identification and Empirical Strategy

- Fuzzy RD/Difference in discontinuities
	- review Lee & Lemieux § 4.4
- Regression specification
- standard errors/clustering
	- what's the right level for clustering? 
	- incorporate sampling uncertainty from safegraph and streetlight? 
- incorporation of multiple rounds/discontinuities? 
- handling resubmissions

# Next Steps

## Identifying specific treatments

- maybe just use any project as the treatment, and get into the heterogeneity later? 

## Power Analysis

I will perform some initial calculations with the outcome data I have on hand, in order to get a sense of the available power of my estimators. To perform this analysis, I will need to select the relevant spatial subset of the outcome data that matches with the projects being considered. This data construction will give me at least an approximation of the sample I will have available to me. In order to do this preliminary analysis before I have generated the precise polygons of the project location, I will use the GPS coordinates of each project and simply match locations within a fixed radius of a project. That set of outcome data will be used for preliminary power analysis.

Once I have constructed a dataset of project locations and associated outcome variables, I will specify some placebo "post-treatment" time periods (without the construction having actually occurred) and estimate the treatment effect of this placebo. The standard error on this placebo estimate will give me some sense of the effect size I would be able to detect given my sample. I can perform this analysis for each of the relevant outcome variables being considered.

## Spillovers

## Land Values, Demographics, and Distributional Effects
