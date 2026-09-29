\name{qsbsdata-package}
\alias{qsbsdata-package}
\alias{qsbsdata}
\docType{package}
\title{Data Sets for the Quantitative Skills in Biological Sciences (QSBS) Course}
\description{
  A data-only package collecting the data sets used in the practicals of
  the course Quantitative Skills in Biological Sciences (QSBS). It contains
  no functions.
}
\details{
  Data sets referred to in the exercises of chapter 8 of Dormann (2020):
  \tabular{lll}{
    \code{\link{cornnit}}     \tab corn yield vs. nitrogen        \tab from \pkg{faraway} \cr
    \code{\link{Rabbit}}      \tab blood pressure in rabbits       \tab from \pkg{MASS} \cr
    \code{\link{jackal}}      \tab jackal mandible lengths         \tab from \pkg{permute} \cr
    \code{\link{Loblolly}}    \tab growth of loblolly pines        \tab from \pkg{datasets} \cr
    \code{\link{ChickWeight}} \tab chick growth on four diets      \tab from \pkg{datasets} \cr
    \code{\link{bolger}}      \tab native rodent presence          \tab Bolger et al. (1997) \cr
    \code{\link{bolger4}}     \tab rodent species abundances       \tab Bolger et al. (1997) \cr
  }
  Data sets from the APES teaching repository
  (\url{https://github.com/biometry/APES/tree/master/Data}):
  \tabular{ll}{
    \code{\link{loyn}}     \tab forest bird abundance in habitat patches \cr
    \code{\link{Decay}}    \tab exponential decay \cr
    \code{\link{regrowth}} \tab fruit production of grazed/ungrazed plants \cr
    \code{\link{elk_data}} \tab elk presence/absence and habitat covariates \cr
  }
  All data sets of the \pkg{Data4Ecologists} package by John Fieberg
  (\url{https://github.com/jfieberg/Data4Ecologists}; accompanies the book
  \emph{Statistics for Ecologists}), copied integrally with their help pages:
  \tabular{ll}{
    \code{\link{ButterflyCounts}} \tab Counts of the baltimore checkerspot butterfly from 2012-2020. \cr
    \code{\link{CarnivorScat}} \tab The same data as CarnivoreScat (Chakrabarti et al. \cr
    \code{\link{CarnivoreScat}} \tab Measures of biomass consumption relative to collectable scat \cr
    \code{\link{CovidMN}} \tab Data on covid 19 testing and results from Minnesota, downloaded on January 15, 2021. \cr
    \code{\link{EggReject}} \tab Experiment to evaluate differential responses to nest parasitism for bold and shy individuals \cr
    \code{\link{Fish_Mercury}} \tab Mercury concentrations in various fish species collected across a number of states from 2018 to 2019. \cr
    \code{\link{HRData}} \tab Data containing the size of wolf home ranges, extent of linear features, and primary productivity (from Dickie et al.... \cr
    \code{\link{HatcheryObs}} \tab Sightings of humpback whales at hatchery release sites in Southeast Alaska \cr
    \code{\link{Kelp}} \tab Data from a study of the effect of various environmental factors (wave orbital displacement, wave breaking depth, win... \cr
    \code{\link{PolikSST}} \tab Sea-surface temperature (SST) data reconstructed using two different molecular signatures \cr
    \code{\link{RIKZdat}} \tab Marine benthic data from nine inter-tidal areas along the Dutch coast. \cr
    \code{\link{Selake}} \tab A fictitious (but realistic) data set from Schwarz (2014) based on an environmental review of a coal mining project. \cr
    \code{\link{SoilChem}} \tab Estimates of phosphorus concentration in the sediment measured in two different ways. \cr
    \code{\link{Swallowtail}} \tab Swallowtail butterfly wing and tail measurements \cr
    \code{\link{WolfPackSize}} \tab annual pack sizes associated with wolves in Montana. Data are from Sells et al. \cr
    \code{\link{WolfPathogen}} \tab Pathogen and parasite exposure data collected on gray wolves by Brandell et al. \cr
    \code{\link{beargrowth}} \tab Size and weigth measurements for 390 black bears monitored in Minnesota by the MN Department of Natural Resources. \cr
    \code{\link{bearmove}} \tab Data set containing observed movement rates and associated average heart rates of 7 black bears in Minnesota. \cr
    \code{\link{beedat}} \tab Data set containing choices made by bees during experiments used to evaluate whether they could learn to select for o... \cr
    \code{\link{beepollen}} \tab Data from Harder and Thompson 1989 quantifying the amount of pollen removed by bumblebee queens and honeybee workers ... \cr
    \code{\link{birdmalariaLFS}} \tab Data set containing lifetime reproductive success, sex, year of birth, and lifespan for great reed warblers from Asgh... \cr
    \code{\link{birdmalariaO}} \tab Great reed warbler observations of offspring telomere length and mothers infection status (infected with malaria or n... \cr
    \code{\link{birdmalariaTL}} \tab Observations of telomere length as well as demographics and infection status of great reed warblers from Asghar et al... \cr
    \code{\link{birds}} \tab Bird species richness in different habitat patches sampled in Jamaica. \cr
    \code{\link{bycatch}} \tab Numbers of trawl tows and numbers of animals caught as bycatch in those tows, tabulated by fishing season (1989--90 t... \cr
    \code{\link{carppassage}} \tab Data from experimental trials aimed at blocking passage of carp in lock and dams along the Missippi River. \cr
    \code{\link{clutch}} \tab Data set containing Mallard (Anas platyhynchos) clutch sizes in two types of nest structures and cropland area within... \cr
    \code{\link{copepod}} \tab Simulated data set containing measurements of copepod oxygen consumption rates at different ambient water temperatures \cr
    \code{\link{d.grassall}} \tab Counts of grassland birds on 14 waterfowl production areas subjected to one of two treatments (cut or control). \cr
    \code{\link{d.woodall}} \tab Counts of woodland/parkland birds in waterfowl production areas subjected to one of two treatments (cut or control). ... \cr
    \code{\link{elephantmove}} \tab Movement data from 35 African elephants between 2008 and 2015 from Abrahms et al. (2017), Tsalyuk et al. \cr
    \code{\link{fish}} \tab Data used to predict the number of fish caught by groups of visitors of a state park. \cr
    \code{\link{fishmorph}} \tab Morphometric measurements of prickleback fishes contributed by RC Hoover and Dr. \cr
    \code{\link{gala}} \tab Plant species richness for 29 islands in the Galapagos Islands archipelago \cr
    \code{\link{hgdat}} \tab Mercury and log mercury concentrations from hooded mergansers eggs collected in Minnesota in 1981 and 2004. \cr
    \code{\link{lifespan}} \tab An identical copy of parasitoidlifespan: survival data for the parasitoid Aphelinus certus of the soybean aphid (Aphi... \cr
    \code{\link{longnosedace}} \tab Abundance data of longnose dace (Rhinichthys cataractae) and in-stream variables collected from the Maryland Biologic... \cr
    \code{\link{nestocc}} \tab Data from a study of mallard nesting structures in Minnesota. \cr
    \code{\link{parasitoidlifespan}} \tab Survival data collected for a parasitoid (Aphelinus certus) of the soybean aphid (Aphis glycines) over a range of hos... \cr
    \code{\link{partialr}} \tab Simulated data set used to demonstrate added-variable and component + residual plots \cr
    \code{\link{peacock}} \tab Observations of female presence before and after peacock solo hoot calls from Roslyn and Montgomerie (2013). \cr
    \code{\link{pines}} \tab Data on lifespan on maximum diameter at breast height for Mountain Pines (Pinus montana) in Switzerland from Bigler (... \cr
    \code{\link{plantherb}} \tab Data set containing information on plant-herbivore interactions \cr
    \code{\link{predPom}} \tab A data file with paired mortality estimates of humans and non-human predators on shared prey. \cr
    \code{\link{reeffish}} \tab Catch-effort data for black sea bass from the Southeast Reef Fish Survey. \cr
    \code{\link{slugs}} \tab Number of slugs found beneath 40 tiles in each of two permanent grasslands. \cr
    \code{\link{sockeye}} \tab estimates of Sockeye salmon in the Fraser River that pass through a monitoring station at Mission and that eventually... \cr
    \code{\link{trombone}} \tab Comparison of 5 experimental practice conditions for 30 trombonists from 3 colleges. \cr
    \code{\link{trunkfl}} \tab Data set containing measurements of trunk flare diameter and diameter at breast height for different species of trees... \cr
    \code{\link{wells}} \tab Data from a water quality study of land on Long Island, New York (Eckhardt et al., 1989). \cr
    \code{\link{willowtits}} \tab Ddetection/non-detection and count data of willow tits (Poecile montanus) during the Swiss Survey of Common Breeding ... \cr
    \code{\link{youtubewages}} \tab Randomly selected wages from a search of "How much do I make on YouTube" adapted from the Skew The Script curriculum ... \cr
  }
  Tabular data sets from B. Staton, \emph{Introduction to R for Natural
  Resource Scientists} (\url{https://bstaton1.github.io/au-r-workshop/};
  data: \url{https://github.com/bstaton1/au-r-workshop-data}), used in the
  self-study module on Monte Carlo methods:
  \tabular{ll}{
    \code{\link{asl}}             \tab age, sex and length of Chinook salmon \cr
    \code{\link{creel}}           \tab hours fished per angler by fishery sector \cr
    \code{\link{daily_catch}}     \tab daily commercial catch of pink salmon \cr
    \code{\link{daily_escape}}    \tab daily escapement counts of pink salmon \cr
    \code{\link{feeding}}         \tab predator feeding (functional response) experiment \cr
    \code{\link{growth}}          \tab age and length of 100 fish \cr
    \code{\link{ponds}}           \tab nutrient addition mesocosm experiment \cr
    \code{\link{sockeye_redfish}} \tab Redfish Lake sockeye salmon, hatchery vs. wild (\code{sockeye} in the book) \cr
    \code{\link{streams}}         \tab width and flow of 20 streams \cr
  }
  The original CSV files of these data sets are in the \file{extdata}
  directory of the package, e.g.
  \code{read.csv(system.file("extdata", "ponds.csv", package = "qsbsdata"))}.

  All data sets are lazy-loaded, so after \code{library(qsbsdata)} they can
  be used directly by name; \code{data(name)} also works.
}
\references{
  Dormann, C. F. (2020) \emph{Environmental Data Analysis: An Introduction
  with Examples in R}. Springer.
}
\keyword{package}
