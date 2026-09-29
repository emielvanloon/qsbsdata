\name{bycatch}
\alias{bycatch}
\docType{data}
\title{Bycatch in a trawl fishery by season, area, gear type and time of day}
\description{
  Numbers of trawl tows and numbers of animals caught as bycatch in those
  tows, tabulated by fishing season (1989--90 to 1994--95), fishing area,
  gear type and time of day. The structure of the data (New Zealand squid
  fishery seasons, North/South areas, bottom vs. mid-water trawls) matches
  the Hooker's sea lion (\emph{Phocarctos hookeri}) bycatch data analysed
  by Manly (2007), but the source package does not document the data set.
}
\usage{data(bycatch)}
\format{
  A data frame with 43 observations on the following 6 variables.
  \describe{
    \item{\code{Season}}{fishing season (character, e.g. \code{"1989-90"}).}
    \item{\code{Area}}{fishing area, \code{"North"} or \code{"South"}.}
    \item{\code{Gear.Type}}{trawl gear, \code{"Bottom"} or \code{"Mid-Water"}.}
    \item{\code{Time}}{time of day, \code{"Day"} or \code{"Night"}.}
    \item{\code{Tows}}{number of tows.}
    \item{\code{Bycatch}}{number of animals caught as bycatch.}
  }
}
\source{
  Copied from the \pkg{Data4Ecologists} package (J. Fieberg,
  \url{https://github.com/jfieberg/Data4Ecologists}), where it is stored as
  \file{data/bycatch.csv} without a help page. The column \code{Gear Type}
  was renamed to \code{Gear.Type}.
}
\references{
  Manly, B. F. J. (2007) \emph{Randomization, Bootstrap and Monte Carlo
  Methods in Biology}. Third edition. Chapman & Hall/CRC, Boca Raton.
}
\examples{
data(bycatch)
fm <- glm(Bycatch ~ Area + Gear.Type + Time + offset(log(Tows)),
          data = bycatch, family = poisson)
summary(fm)
}
\keyword{datasets}
