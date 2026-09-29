\name{Loblolly}
\alias{Loblolly}
\docType{data}
\title{Growth of Loblolly Pine Trees}
\description{
  The \code{Loblolly} data frame has 84 rows and 3 columns of records of
  the growth of Loblolly pine trees.
}
\usage{data(Loblolly)}
\format{
  A data frame containing the following columns:
  \describe{
    \item{\code{height}}{
      a numeric vector of tree heights (ft).
    }
    \item{\code{age}}{
      a numeric vector of tree ages (yr).
    }
    \item{\code{Seed}}{
      an ordered factor indicating the seed source for the tree.
      The ordering is according to increasing maximum height.
    }
  }
}
\details{
  This dataset was originally part of package \pkg{nlme}, and that has
  methods (including for \code{[}, \code{as.data.frame}, \code{plot} and
  \code{print}) for its grouped-data classes.

  Copied from the \pkg{datasets} package that ships with R, where it has the
  same name. In this package it is stored as a plain \code{data.frame}
  (the \code{groupedData} classes have been dropped).
}
\source{
  Kung FH (1986).
  \dQuote{Fitting Logistic Growth Curve with Predetermined Carrying Capacity.}
  In \emph{Proceedings of the Statistical Computing Section}, 340--343.
  American Statistical Association.

  Pinheiro J, Bates DM (2000).
  \emph{Mixed-Effects Models in S and S-PLUS}, series Statistics and Computing.
  Springer New York. ISBN 9780387989570.
}
\references{
  Dormann, C. F. (2020) \emph{Environmental Data Analysis: An Introduction with
  Examples in R}. Springer. Chapter 8, exercise 4.
}
\examples{
data(Loblolly)
plot(height ~ age, data = Loblolly,
     xlab = "Tree age (yr)", ylab = "Tree height (ft)", las = 1)
fm <- lm(height ~ age, data = Loblolly)
abline(fm)
}
\keyword{datasets}
