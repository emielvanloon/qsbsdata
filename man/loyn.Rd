\name{loyn}
\alias{loyn}
\docType{data}
\title{Forest bird abundance in habitat fragments in Victoria, Australia}
\description{
  Abundance of forest birds in 56 forest patches in south-eastern
  Victoria, Australia, together with characteristics of the patches
  (area, isolation, grazing intensity, altitude). The data come from
  Loyn (1987) and are widely used as a multiple-regression example
  (e.g. Quinn & Keough 2002, Box 6.2, where the data set is called
  \code{loyn}).
}
\usage{data(loyn)}
\format{
  A data frame with 56 observations (forest patches) on the following
  8 variables.
  \describe{
    \item{\code{Site}}{patch identifier (1--56).}
    \item{\code{ABUND}}{abundance of forest birds (mean number of birds per
      20 minute census, averaged over visits).}
    \item{\code{AREA}}{area of the patch (ha).}
    \item{\code{DIST}}{distance to the nearest other patch (m).}
    \item{\code{LDIST}}{distance to the nearest larger patch (m).}
    \item{\code{YR.ISOL}}{year in which the patch was isolated by clearing.}
    \item{\code{GRAZE}}{grazing intensity in the patch, an ordinal index
      from 1 (light) to 5 (heavy).}
    \item{\code{ALT}}{altitude of the patch (m).}
  }
}
\details{
  \code{AREA}, \code{DIST} and \code{LDIST} are strongly right-skewed and
  are usually log10-transformed before analysis.
}
\source{
  The file \file{birds.txt} (renamed here to \code{loyn}) was taken from the APES teaching repository
  (\url{https://github.com/biometry/APES/tree/master/Data}), which does not
  document its origin. The variables and values correspond to the Loyn
  (1987) data as distributed with Quinn & Keough (2002).
}
\references{
  Loyn, R. H. (1987) Effects of patch area and habitat on bird abundances,
  species numbers and tree health in fragmented Victorian forests. In:
  Saunders, D. A., Arnold, G. W., Burbidge, A. A. & Hopkins, A. J. M. (eds)
  \emph{Nature Conservation: The Role of Remnants of Native Vegetation},
  pp. 65--77. Surrey Beatty & Sons, Chipping Norton, NSW.

  Quinn, G. P. & Keough, M. J. (2002) \emph{Experimental Design and Data
  Analysis for Biologists}. Cambridge University Press.
}
\examples{
data(loyn)
pairs(loyn[, -1])
fm <- lm(ABUND ~ log10(AREA) + GRAZE + YR.ISOL, data = loyn)
summary(fm)
}
\keyword{datasets}
