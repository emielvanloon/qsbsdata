\name{elk_data}
\alias{elk_data}
\docType{data}
\title{Elk presence/absence and habitat covariates}
\description{
  Presence or absence of elk (\emph{Cervus canadensis}) at 3848 locations,
  together with four environmental covariates describing each location
  (distance to roads, vegetation greenness, terrain ruggedness and
  elevation) and the habitat type. The data are used to model habitat
  use with a binomial GLM (logistic regression).
}
\usage{data(elk_data)}
\format{
  A data frame with 3848 observations on the following 6 variables.
  \describe{
    \item{\code{dist_roads}}{distance to the nearest road (m).}
    \item{\code{NDVI}}{normalised difference vegetation index, a satellite
      measure of vegetation greenness, scaled by 10000.}
    \item{\code{ruggedness}}{terrain ruggedness index.}
    \item{\code{dem}}{elevation from a digital elevation model (m).}
    \item{\code{presence}}{elk presence (1) or absence (0).}
    \item{\code{habitat}}{a factor with levels \code{forest} and \code{open}.}
  }
}
\source{
  The file \file{elk_data.RData} was taken from the folder
  \file{Data/Simone} of the APES teaching repository
  (\url{https://github.com/biometry/APES/tree/master/Data}), i.e. it was
  contributed by Simone Ciuti. The repository does not document the origin
  of the data or the units of the variables; the units given above are the
  usual ones for such variables and should be treated as a best guess.
}
\examples{
data(elk_data)
fm <- glm(presence ~ dist_roads + NDVI + ruggedness + habitat,
          data = elk_data, family = binomial)
summary(fm)
}
\keyword{datasets}
