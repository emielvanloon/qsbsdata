\name{cornnit}
\alias{cornnit}
\docType{data}
\title{Corn yields from nitrogen application}
\description{
The relationship between corn yield (bushels per acre) and nitrogen (pounds
per acre) fertilizer application were studied in Wisconsin.
}
\usage{data(cornnit)}
\format{
A data frame with 44 observations on the following 2 variables.
\describe{
  \item{\code{yield}}{corn yield in bushels per acre}
  \item{\code{nitrogen}}{pounds per acre}
}
}
\source{
Unknown. Copied from the \pkg{faraway} package (Faraway, J. J., \emph{Functions and
Datasets for Books by Julian Faraway}), where the data set is also called
\code{cornnit}.
}
\references{
Faraway, J. J. (2016) \emph{Linear Models with R}. Second edition. Chapman & Hall/CRC.

Dormann, C. F. (2020) \emph{Environmental Data Analysis: An Introduction with
Examples in R}. Springer. Chapter 8, exercise 1.
}
\examples{
data(cornnit)
plot(yield ~ nitrogen, data = cornnit)
}
\keyword{datasets}
