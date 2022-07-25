---
title: Streetscape Changes and Infrastructure Equity
author: Connor P. Jackson
date: August 1, 2022
lang: en
format: pptx
linkcolor: blue
urlcolor: blue
link-citations: true
---

# Introduction

## Motivation: Spatial Equilibrium and the Urban Environment

<!-- ![Three bicyclists enjoying a new parking protected bike lane on Telegraph Avenue](slide_images/bikelane.jpg) -->

Image Source: [Bike East Bay](https://catsip.berkeley.edu/safety-stories/stories-field/daves-safety-story-lessons-oakland)

::: notes
Transportation infrastructure and urban streetscape design are important determinants of the spatial equilibrium in urban areas. They impact transportation speeds, generate direct amenities, and enable the provision of other local amenities. Many cities in recent years are reallocating space away from private automobiles toward pedestrians, bicyclists, and transit users.

But in existing urbanized areas, these changes can only be made by reallocating existing space among users. Even if they lead to a welfare improvement, it will not be a Pareto improvement, so these projects are almost always met with both strong support and fierce opposition. So as more and more cities pursue these projects, it’s really important to understand who the winners and losers of these projects are, and how these changes play out.
:::

## Historical Context

<!-- ![Aerial Photo of Oakland in 1946, showing existing neighborhoods](slide_images/oakland1946.jpg) -->

<!-- ![Aerial Photo of Oakland in 2014, showing Interstates 980 and 880 that displaced residential neighborhoods](slide_images/oakland2014.jpg) -->

Source: [University of Oklahoma Institute for Quality Communities](http://iqc.ou.edu/2015/02/10/60yrswest/)

::: notes
The US of course has a long history of using infrastructure to reshape the spatial equilibrium and create winners and losers. The Interstate Highway System regularly displaced and demolished thriving Black and brown communities in urban areas in order to benefit white suburbanites. These photos of Oakland before and after the construction of 880 and 980 make that reallocation of urban space quite clear, but this isn’t just a problem of history. 

Low income and minority communities have experienced decades of neglect at the hands of city transportation and public works departments, so announcements of new bike lanes or traffic safety interventions are often seen as a harbinger of gentrification and displacement, rather than as a benefit that will accrue to them and their neighbors. So understanding how the benefits and costs actually arise, where they accrue, and how they change spatial equilibria is really important as we do more of these projects
:::

## Literature Review

---

Goal: structural contribution, informed by reduced-form results

Today: reduced-form approach


## Research Question

1. What are the impacts of streetscape infrastructure projects on traffic throughput and speeds, visitation to adjacent businesses, crashes, and fatalities?
2. What are the relevant dimensions of heterogeneity?

_Identification:_ RD using state funding awards at budget threshold


# Infrastructure Projects and Data


## CA Active Transportation Program

:::: {.columns}
::: {.column}
- Funds infrastructure projects that encourage walking, biking, etc.
- Often re-allocate space among users
- One of the only large funding source for these projects
- Cities apply to fund projects
:::

::: {.column}
- 900+ projects funded
- 2500+ applications
- ~$220m annual budget
- 5 funding rounds awarded
- Two funding components: statewide and regional
:::
::::

- Funds infrastructure projects that encourage walking, biking, etc.
- Assigns projects a score based on fixed criteria
- Rank orders projects by score
- Awards full funding to projects until program funding is exhausted

::: notes
In general, these projects are designed and implemented by localities, but often receive state funding. One such funding program in California that I will be using is the Active Transportation Program.

Unlike automobile projects, which are primarily funded by state governments receiving block grants from the federal DOT, local streetscape improvements are left primarily to the city to fund. Funding is often cobbled together from multiple sources, like the city’s street maintenance and paving budget, developer fees, or competitive grant programs. California cities in particular struggles to fund these projects, because of the budgetary realities caused by Prop 13. 
:::

## ATP Project Selection: Statewide

- Independent evaluation with rubric
- Project scores assigned: -5--100
- Projects ordered by score
- Threshold score defined by budget
- Higher score projects funded

## ATP Project Selection: Regional

- Projects not funded statewide sent to regional component
- Regions define new criteria, scores (can use statewide)
- Projects assigned new scores, ranked
- Threshold scores defined by budget
- Higher score projects funded

## ATP Project Data

[Project attributes page]

- Location
- Attributes 
- Timeline
- Baseline use data
- _Scores_ (running variables)

## Example Project: Oakland, 14th Street

>The project includes a **reduction in travel lanes** from four (4) to two (2);
>addition of **Class IV protected bicycle lanes** separated from travel by curbs
>and parked cars for maximum protection; improved pedestrian facilities
>including refuges, marked crossings, retimed signals, storm drain rain gardens,
>and transit boarding islands. 

## Map of Project Area

<!-- ![14th Street Bike lane project map, from Interstate 980 to Oak Street](slide_images/14th st map.pdf) -->

# Research Plan

## Outcome Data

- Visitor counts to points of interest (Safegraph)
- Traffic volumes and speeds
  - Source TBD: Streetlight vs ADCI/TomTom
  - Licensing and cost issues
- Crashes and Fatalities (SWITRS)
  - Supplement with hospital admissions


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

## Manipulation



## Attribute Balance



## Funding Probability

## Future Directions

- Characterize spillovers on nearby areas
- Explore distribution of benefits and costs
- Identify spatial equilibrium changes: land values, displacement, gentrification

::: notes
So that's where I'm at right now. Once I get my hands on the projects data and work through these initial questions, I'll be expanding my focus to spillovers in nearby areas (potentially looking at complementary vs substitute streets), then onto the later steps in the logic chain.
:::
