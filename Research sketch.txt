# Research Question

## Motivation and Question

In recent years, local governments have been spending substantial amounts of funding on changes to street infrastructure. These projects, which use physical changes to the streetscape to reallocate space between uses and modify user behavior, are often justified with improvements to safety, health, comfort, efficiency, mode share, and emissions in mind. However, streetscape changes like these are often met with fierce opposition, citing impacts to vehicle throughput, increased travel times, decreases in parking, reduced access for business deliveries and customers. While some existing observational and engineering research has explored the traffic outcomes of these infrastructure changes, little causally identified economic research exists to explore the broader social impacts or perform welfare analyses. The objective of this project is to quantify the distributional and equity impacts of [streetscape changes], considering [traffic, mode share, traffic spillovers, safety, business foot traffic, and air quality].

The first step in this research is providing causal estimates of the effects of these projects on the above outcome variables. I can then decompose many of the effects based on the home census block group of users, to more fully describe the distributional impacts of these policies. By combining these results with UC Census demographic data, I can characterize who benefits and who is harmed by these streetscape changes. In particular, I can look at whether they primarily impact people who live in the nearby areas, those who are traveling to the areas around the projects to work, shop, etc., or those who are simply passing through the project area. 

[Can I do any explicit welfare analysis? What assumptions on utility will I need to make?]

## Identification Strategy

This project uses a regression discontinuity design for identification. Many of these projects receive funding from regional, state, or federal grants, such as California's Active Transportation Program. This program, and others like it, evaluates submitted projects using a fixed rubric, and assigns each program a numerical score. These funding programs are unable to fund every submitted project, and so define a cutoff score based on the funding available. Projects above the threshold receive funding, while those below the threshold do not receive funding. The funding threshold is not known by the applicants or the evaluators prior to the submission and ranking of the applications, eliminating the possibility of bunching on the running variable.

Receiving funding from any one particular grant program does not guarantee that the project will get built, and cities can proceed with the project using other funds, even if they are denied. Thus, this project will use a fuzzy RD design, with the funding threshold instrumenting for project construction. In addition, application materials include substantial data on baseline conditions for each of the projects, so I will be able to check for pretrends. 

## Econometric Approach


# Power Analysis

I will perform some initial calculations with the outcome data I have on hand, in order to get a sense of the available power of my estimators. To perform this analysis, I will need to select the relevant spatial subset of the outcome data that matches with the projects being considered. This data construction will give me at least an approximation of the sample I will have available to me. In order to do this preliminary analysis before I have generated the precise polygons of the project location, I will use the GPS coordinates of each project and simply match locations within a fixed radius of a project. That set of outcome data will be used for preliminary power analysis.

Once I have constructed a dataset of project locations and associated outcome variables, I will specify some placebo "post-treatment" time periods (without the construction having actually occurred) and estimate the treatment effect of this placebo. The standard error on this placebo estimate will give me some sense of the effect size I would be able to detect given my sample. I can perform this analysis for each of the relevant outcome variables being considered.


