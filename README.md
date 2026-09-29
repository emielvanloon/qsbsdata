# qsbsdata

An R data package holding the data sets that are used in the practicals of the
course **Quantitative Skills in Biological Sciences (QSBS)**. It contains only
data sets and their help pages, no functions.

## Installation

Install directly from this GitHub repository with the `remotes` package:

```r
# install.packages("remotes")   # only needed once
remotes::install_github("emielvanloon/qsbsdata")
```

(`devtools::install_github("emielvanloon/qsbsdata")` works as well.)

## Usage

```r
library(qsbsdata)
data(package = "qsbsdata")   # list all data sets
?qsbsdata                    # overview with the origin of each data set
?RIKZdat                     # help page of an individual data set
```

All data sets are lazy-loaded, so after `library(qsbsdata)` they can be used
directly by name, e.g. `head(RIKZdat)`.

## Sources

The data sets were collected from the R packages `faraway`, `MASS`, `permute`
and `datasets`, from the data archive accompanying Dormann (2020)
*Environmental Data Analysis*, from the
[APES](https://github.com/biometry/APES) teaching repository, and from the
[Data4Ecologists](https://github.com/jfieberg/Data4Ecologists) package by
John Fieberg, and from the book
[*Introduction to R for Natural Resource Scientists*](https://bstaton1.github.io/au-r-workshop/)
by Ben Staton (data: <https://github.com/bstaton1/au-r-workshop-data>). See
the help page of each data set for its source.

### Data from Staton's book (Monte Carlo self-study)

`asl`, `creel`, `daily_catch`, `daily_escape`, `feeding`, `growth`, `ponds`,
`sockeye_redfish` and `streams`. The book calls `sockeye_redfish` just
`sockeye`; it was renamed to avoid a clash with the Fraser River `sockeye`
data from Data4Ecologists. The original CSV files are included and can be
read with, e.g.:

```r
read.csv(system.file("extdata", "ponds.csv", package = "qsbsdata"))
```

The data frames were built from these files by `data-raw/staton_data.R`,
which converts grouping variables to factors and the deliberate `#VALUE!`
error in `ponds$chao` to `NA`. The spatial data of the book's Chapter 6 are
not included.
