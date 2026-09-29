\name{lifespan}
\alias{lifespan}
\docType{data}
\title{Parasitoid survival data (duplicate of parasitoidlifespan)}
\description{
  An identical copy of \code{\link{parasitoidlifespan}}: survival data for
  the parasitoid \emph{Aphelinus certus} of the soybean aphid
  (\emph{Aphis glycines}) over a range of host densities, from a laboratory
  assay (Miksanek & Heimpel 2020). See \code{\link{parasitoidlifespan}} for
  the description of the variables. The data set is kept under this name
  for compatibility with the \pkg{Data4Ecologists} package.
}
\usage{data(lifespan)}
\format{
  A data frame with 55 observations on 6 variables; see
  \code{\link{parasitoidlifespan}}.
}
\source{
  Copied from the \pkg{Data4Ecologists} package (J. Fieberg,
  \url{https://github.com/jfieberg/Data4Ecologists}), where it is stored
  without a help page.
}
\references{
  Miksanek, J. R. & Heimpel, G. E. (2020) Density-dependent lifespan and
  estimation of life expectancy for a parasitoid with implications for
  population dynamics. \emph{Oecologia} \bold{194}, 311--320.
}
\seealso{\code{\link{parasitoidlifespan}}}
\examples{
data(lifespan)
identical(lifespan, parasitoidlifespan)
}
\keyword{datasets}
