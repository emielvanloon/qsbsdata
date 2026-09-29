\name{CarnivorScat}
\alias{CarnivorScat}
\docType{data}
\title{Biomass consumed per scat in carnivore feeding trials (duplicate of CarnivoreScat)}
\description{
  The same data as \code{\link{CarnivoreScat}} (Chakrabarti et al. 2016),
  differing only in the name of the third column (\code{Mean_prey_wt_kg}
  instead of \code{Mean_prey_wt}). See \code{\link{CarnivoreScat}} for the
  description of the variables. The data set is kept under this name for
  compatibility with the \pkg{Data4Ecologists} package.
}
\usage{data(CarnivorScat)}
\format{
  A data frame with 68 observations on the following 4 variables.
  \describe{
    \item{\code{Predator}}{predator consuming prey (character).}
    \item{\code{Prey.number}}{type of prey and number of prey consumed in
      the feeding trial (character).}
    \item{\code{Mean_prey_wt_kg}}{mean weight of prey offered during the
      feeding trial (kg).}
    \item{\code{Biomass.per.scat}}{biomass (kg) consumed per collectable
      scat.}
  }
}
\source{
  Chakrabarti, S., Jhala, Y. V., Dutta, S., Qureshi, Q., Kadivar, R. F. &
  Rana, V. J. (2016). Adding constraints to predation through allometric
  relation of scats to consumption. \emph{Journal of Animal Ecology}
  \bold{85}, 660--670.

  Copied from the \pkg{Data4Ecologists} package (J. Fieberg,
  \url{https://github.com/jfieberg/Data4Ecologists}), where it is stored
  without a help page.
}
\seealso{\code{\link{CarnivoreScat}}}
\examples{
data(CarnivorScat)
plot(Biomass.per.scat ~ Mean_prey_wt_kg, data = CarnivorScat,
     col = factor(Predator))
}
\keyword{datasets}
