---
title: Streetscape Changes and Infrastructure Equity
author: Connor P. Jackson
date: April 6, 2022
lang: en
output:
  powerpoint_presentation: default
  ioslides_presentation:
    transition: faster
    df_print: !expr pander::pander
    css: slides.css
linestretch: 1.1
linkcolor: blue
urlcolor: blue
link-citations: true
---

# Motivation and Question

## Motivation: Spatial Equilibrium and the Urban Environment

![slide_images/bikelane.jpg](Three bicyclists enjoying a new parking protected bike lane on Telegraph Avenue)

Source: [Bike East Bay](https://catsip.berkeley.edu/safety-stories/stories-field/daves-safety-story-lessons-oakland)

::: notes
Transportation infrastructure and urban streetscape design are important determinants of the spatial equilibrium in urban areas. They impact transportation speeds, generate direct amenities, and enable the provision of other local amenities. Many cities in recent years are reallocating space away from private automobiles toward pedestrians, bicyclists, and transit users. 

But in existing urbanized areas, these changes can only be made by reallocating existing space among users. Even if they lead to a welfare improvement, it will not be a Pareto improvement, so these projects are almost always met with both strong support and fierce opposition. So as more and more cities pursue these projects, it's really important to understand who the winners and losers of these projects are, and how these changes play out. 
:::

## Historical Context

![slide_images/oakland1946.jpg](Aerial Photo of Oakland in 1946, showing existing neighborhoods)

![slide_images/oakland2014.jpg](Aerial Photo of Oakland in 2014, showing Interstates 980 and 880 that displaced residential neighborhoods)

Source: [University of Oklahoma Institute for Quality Communities](http://iqc.ou.edu/2015/02/10/60yrswest/)

::: notes
The US of course has a long history of using these projects to reshape the spatial equilibrium and create winners and losers. The Interstate Highway System regularly displaced and demolished thriving Black and brown communities in urban areas in order to benefit white suburbanites. These photos of Oakland before and after the construction of 880 and 980 make that reallocation of urban space quite clear, but this isn't just a problem of history. Low income and minority communities have experienced decades of neglect at the hands of city transportation and public works departments, so announcements of new bike lanes or traffic safety interventions are often seen as a harbinger of gentrification and displacement, rather than as a benefit that will accrue to them and their neighbors. So understanding how the benefits and costs actually arise, where they accrue, and how they change spatial equilibria is really important as we do more of these projects
:::

## Motivation

Infrastructure Changes -> Economic Activity -> Benefits and Costs -> Spatial Equilibrium

::: notes
Of course, there's a lot that goes on between pouring concrete and spatial sorting. Infrastructure changes drive changes in economic activity, which lead to benefits and costs accruing to various agents. From these new benefits and costs, users reoptimize into a new spatial equilibrium. I ultimately want to say something about each step in this process, but today I want to focus on that first step. 
:::

## Research Question

1. What are the impacts of adding a bike lane, removing a traffic lane, or removing on-street parking on traffic throughput and speeds, visitation to adjacent businesses, crashes, and fatalities? 
2. What are the magnitude and spatial extent of spillovers from these projects on adjacent areas?

Identification: RD using state funding awards at budget threshold

# Infrastructure Projects and Data

::: notes
I want to spend some time now telling you a bit more about what these projects look like and how they are funded, which is the root of my identification strategy. 

These streetscape modification projects are very heterogeneous, and are tailored to each area. They can contain a lot of different components, but I am going to focus on just a few of them. I may shift this focus as I get more data on more projects, but to start with, I am focusing on three common project attributes: the installation of a class 2 or class 4 bike lane, the removal of a car travel lane, or the removal of on-street parking. 
:::

## CA Active Transportation Program

- Funds infrastructure projects that encourage walking, biking, etc.
- Assigns projects a score based on fixed criteria
- Rank orders projects by score
- Awards full funding to projects until program funding is exhausted

900+ Projects Funded — ~$220m total annual budget — 5 funding rounds awarded

::: notes
In general, these projects are designed and implemented by localities, but often receive state funding. One such funding program in California that I will be using is the Active Transportation Program. 
:::

## ATP Project Data

[Project attributes page]

- Location
- Attributes 
- Timeline
- Baseline use data <!-- (user counts, crashes, fatalities) -->
- _Scores_ (running variable)

## Example Project: Oakland, 14th Street

>The project includes a **reduction in travel lanes** from four (4) to two (2);
>addition of **Class IV protected bicycle lanes** separated from travel by curbs
>and parked cars for maximum protection; improved pedestrian facilities
>including refuges, marked crossings, retimed signals, storm drain rain gardens,
>and transit boarding islands. 

## Map of Project Area

![slide_images/14th st map.pdf](14th Street Bike lane project map, from Interstate 980 to Oak Street)

## Project Rendering

![slide_images/![slide_images/]()](14th Street Bike lane project rendering, intersection with Lakeside Drive/Oak Street, showing parking protected bike lanes, a protected intersection, and widened sidewalks)

## Project Timeline

- Project Approval & Environmental Documentation: January 2016–December 2017
- Plans, Specifications, and Estimates: August 2019–November 2020
- Right of Way acquisition: August 2019–November 2020
- Construction: January 2021–July 2022

# Research Plan

::: notes
So that's what a typical project looks like. Let's now turn to my outcome variables of interest and the identification strategy. 
:::

## Outcome Data

- Visitor counts to points of interest (Safegraph)
- Traffic volumes and speeds (Streetlight)
- Crashes and Fatalities (SWITRS)

## Identification Strategy

- Funding threshold score: RD
- Projects may be built anyway: Fuzzy RD
- Rich baseline data: differences in discontinuities

<!-- How to handle spillovers? -->

<!-- complement vs substitute roads (parallel vs perpendicular)? -->

::: notes
As I mentioned before, the Active Transportation Program's rank ordering of projects and budget threshold allow me to use a regression discontinuity design at the threshold score for funding. Because cities could pursue other funding to build the project even if not approved by the ATP, and sometimes funded projects end up being cancelled, I will need to use a Fuzzy RD approach. 

That being said, I also have fairly rich baseline data, both from the application packets and in my sources of outcome data. So I would like to employ a differences in discontinuities approach to leverage that additional information. 
:::

## Future Directions

- Characterize spillovers on nearby areas
- Quantify overall welfare effects
- Explore distribution of benefits and costs
- Identify spatial equilibrium changes: land values, displacement, gentrification

::: notes
So that's where I'm at right now. Once I get my hands on the projects data and work through these initial questions, I'll be expanding my focus to spillovers in nearby areas (potentially looking at complementary vs substitute streets), then onto the later steps in the logic chain.
:::
