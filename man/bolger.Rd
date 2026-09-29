\name{bolger}
\alias{bolger}
\docType{data}
\title{Presence of native rodents in urban habitat fragments (Bolger et al. 1997)}
\description{
  Bolger et al. (1997) used an island-biogeographic approach to ask whether
  small fragments of coastal sage scrub and chaparral, isolated from each
  other by urban development in canyons around San Diego (southern
  California, USA), can still support populations of native rodents.
  Rodents were live-trapped in 25 habitat fragments (\dQuote{urban canyons}).
  This data set records, for each fragment, whether any native rodent
  species was captured, together with three characteristics of the
  fragment that were expected to influence the persistence of native
  rodents: how well it is vegetated with shrubs, how far it is from
  the nearest large (\dQuote{source}) canyon and how long ago it was
  isolated by urbanisation.
}
\usage{data(bolger)}
\format{
  A data frame with 25 observations (habitat fragments) on the following
  4 variables.
  \describe{
    \item{\code{PERSHRUB}}{percentage of the fragment covered by shrubs (\%).}
    \item{\code{DISTX}}{distance from the fragment to the nearest source
      canyon, i.e. the nearest large area of unfragmented habitat (m).}
    \item{\code{AGE}}{time since the fragment was isolated by urban
      development (years).}
    \item{\code{RODENTSP}}{presence (1) or absence (0) of native rodent
      species in the fragment.}
  }
}
\details{
  In the original study, fragments that were older and had less shrub cover
  tended to have lost their native rodents, whereas the distance to a
  source canyon was a weaker predictor. The data are typically analysed
  with a binomial GLM (logistic regression) of \code{RODENTSP} on the three
  predictors; see Dormann (2020), chapter 8, exercise 6 and Quinn & Keough
  (2002), chapter 13.
}
\source{
  Bolger, D. T., Alberts, A. C., Sauvajot, R. M., Potenza, P., McCalvin, C.,
  Tran, D., Mazzoni, S. & Soulé, M. E. (1997). Response of rodents to
  habitat fragmentation in coastal southern California.
  \emph{Ecological Applications} \bold{7}, 552--563.

  The file \file{bolger.txt} was taken from the data archive accompanying
  Dormann (2020) (\url{https://www.biom.uni-freiburg.de/mitarbeiter/dormann/1daten.zip});
  the same data are distributed with Quinn & Keough (2002).
}
\references{
  Dormann, C. F. (2020) \emph{Environmental Data Analysis: An Introduction
  with Examples in R}. Springer. Chapter 8, exercise 6.

  Quinn, G. P. & Keough, M. J. (2002) \emph{Experimental Design and Data
  Analysis for Biologists}. Cambridge University Press.
}
\seealso{\code{\link{bolger4}} for the abundances of the individual rodent
  species in the same fragments.}
\examples{
data(bolger)
plot(RODENTSP ~ PERSHRUB, data = bolger)
fm <- glm(RODENTSP ~ PERSHRUB, data = bolger, family = binomial)
summary(fm)
}
\keyword{datasets}
