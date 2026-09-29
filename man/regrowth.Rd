\name{regrowth}
\alias{regrowth}
\docType{data}
\title{Fruit production of grazed and ungrazed plants as a function of root size}
\description{
  Seed (fruit) production of 40 individual plants in relation to their
  initial size (root diameter) and whether or not they were grazed
  by rabbits. The data are a classic ANCOVA example: the raw means
  suggest that grazed plants produce more fruit, but once initial size is
  accounted for, ungrazed plants produce more fruit than grazed plants of
  the same root diameter -- the grazed plants simply happened to be
  larger on average.
}
\usage{data(regrowth)}
\format{
  A data frame with 40 observations on the following 3 variables.
  \describe{
    \item{\code{Root}}{initial root diameter of the plant (mm), measured
      before grazing.}
    \item{\code{Fruit}}{seed production of the plant (dry mass, mg).}
    \item{\code{Grazing}}{a factor with levels \code{Grazed} and
      \code{Ungrazed}.}
  }
}
\source{
  The file \file{regrowth.txt} was taken from the APES teaching repository
  (\url{https://github.com/biometry/APES/tree/master/Data}), which does not
  document its origin. The variables and values are those of the
  \code{ipomopsis} data (\emph{Ipomopsis aggregata}, scarlet gilia) used in
  the ANCOVA chapter of Crawley (2007, 2013), where the object is named
  \code{regrowth}.
}
\references{
  Crawley, M. J. (2013) \emph{The R Book}. Second edition. Wiley, Chichester.
}
\examples{
data(regrowth)
plot(Fruit ~ Root, data = regrowth, pch = as.numeric(Grazing))
fm <- lm(Fruit ~ Root + Grazing, data = regrowth)
summary(fm)
}
\keyword{datasets}
