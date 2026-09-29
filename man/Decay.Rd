\name{Decay}
\alias{Decay}
\docType{data}
\title{Exponential decay: amount of a substance remaining over time}
\description{
  Amount of a (radioactive) substance remaining at 31 successive points
  in time. The relationship is a textbook example of exponential decay,
  \eqn{y = a\,e^{-bx}}{y = a * exp(-b * x)}, which can be fitted either
  by linear regression of \code{log(amount)} on \code{time} or directly
  with non-linear least squares (\code{nls}).
}
\usage{data(Decay)}
\format{
  A data frame with 31 observations on the following 2 variables.
  \describe{
    \item{\code{time}}{time (0--30, arbitrary units).}
    \item{\code{amount}}{amount of substance remaining (arbitrary units).}
  }
}
\source{
  The file \file{Decay.txt} was taken from the APES teaching repository
  (\url{https://github.com/biometry/APES/tree/master/Data}), which does not
  document its origin. A file with this name, these variables and this
  structure is used in the regression chapter of Crawley (2007, 2013).
}
\references{
  Crawley, M. J. (2013) \emph{The R Book}. Second edition. Wiley, Chichester.
}
\examples{
data(Decay)
plot(amount ~ time, data = Decay)
fm <- lm(log(amount) ~ time, data = Decay)
lines(Decay$time, exp(fitted(fm)))
}
\keyword{datasets}
