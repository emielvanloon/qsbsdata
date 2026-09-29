\name{bolger4}
\alias{bolger4}
\docType{data}
\title{Rodent abundances in urban habitat fragments (Bolger et al. 1997)}
\description{
  Numbers of individuals of nine rodent species captured in 25 fragments of
  coastal sage scrub and chaparral habitat that are isolated by urban
  development in canyons around San Diego (southern California, USA),
  together with the area and age of each fragment and its distance to the
  nearest source canyon. Seven of the species are native to the region; two
  (the black rat and the house mouse) are non-native (introduced) species.
  The study is described in Bolger et al. (1997); see also
  \code{\link{bolger}}.
}
\usage{data(bolger4)}
\format{
  A data frame with 25 observations (habitat fragments) on the following
  13 variables.
  \describe{
    \item{\code{SITE}}{name of the fragment (character).}
    \item{\code{AREA}}{area of the fragment (ha).}
    \item{\code{DISTX}}{distance from the fragment to the nearest source
      canyon, i.e. the nearest large area of unfragmented habitat (m).}
    \item{\code{AGE}}{time since the fragment was isolated by urban
      development (years).}
    \item{\code{RRATTUS}}{number of black rats, \emph{Rattus rattus}
      (non-native).}
    \item{\code{MMUS}}{number of house mice, \emph{Mus musculus}
      (non-native).}
    \item{\code{PCALIF}}{number of California mice,
      \emph{Peromyscus californicus} (native).}
    \item{\code{PEREM}}{number of cactus mice, \emph{Peromyscus eremicus}
      (native).}
    \item{\code{RMEGAL}}{number of western harvest mice,
      \emph{Reithrodontomys megalotis} (native).}
    \item{\code{NFUSC}}{number of dusky-footed woodrats,
      \emph{Neotoma fuscipes} (native).}
    \item{\code{NLEPID}}{number of desert woodrats, \emph{Neotoma lepida}
      (native).}
    \item{\code{PFALLAX}}{number of San Diego pocket mice,
      \emph{Perognathus} (now \emph{Chaetodipus}) \emph{fallax} (native).}
    \item{\code{MCALIF}}{number of California voles,
      \emph{Microtus californicus} (native).}
  }
}
\details{
  The counts are numbers of individuals captured during live-trapping in
  each fragment. Rows are in the same order as in \code{\link{bolger}}
  (compare the \code{DISTX} and \code{AGE} columns). The data are typically
  used for Poisson or negative-binomial regression of the abundance of a
  species on \code{AGE} (Dormann 2020, chapter 8, exercise 7), or for
  multivariate ordination of the species composition (Quinn & Keough 2002).
}
\source{
  Bolger, D. T., Alberts, A. C., Sauvajot, R. M., Potenza, P., McCalvin, C.,
  Tran, D., Mazzoni, S. & Soulé, M. E. (1997). Response of rodents to
  habitat fragmentation in coastal southern California.
  \emph{Ecological Applications} \bold{7}, 552--563.

  The file \file{bolger4.txt} was taken from the data archive accompanying
  Dormann (2020) (\url{https://www.biom.uni-freiburg.de/mitarbeiter/dormann/1daten.zip});
  the same data are distributed with Quinn & Keough (2002).
}
\references{
  Dormann, C. F. (2020) \emph{Environmental Data Analysis: An Introduction
  with Examples in R}. Springer. Chapter 8, exercise 7.

  Quinn, G. P. & Keough, M. J. (2002) \emph{Experimental Design and Data
  Analysis for Biologists}. Cambridge University Press.
}
\seealso{\code{\link{bolger}}}
\examples{
data(bolger4)
plot(RMEGAL ~ AGE, data = bolger4)
fm <- glm(RMEGAL ~ AGE, data = bolger4, family = poisson)
summary(fm)
\dontrun{
library(MASS)
fm.nb <- glm.nb(RMEGAL ~ AGE, data = bolger4)
AIC(fm, fm.nb)
}
}
\keyword{datasets}
