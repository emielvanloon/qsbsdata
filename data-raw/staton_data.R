# Build the .rda data objects of the Staton data sets in data/ from the
# original CSV files in inst/extdata/. The CSV files are unmodified copies of
# https://github.com/bstaton1/au-r-workshop-data (Staton, B.A.,
# "Introduction to R for Natural Resource Scientists").
#
# Run from the package root:  Rscript data-raw/staton_data.R

raw <- function(file, ...) {
  read.csv(file.path("inst", "extdata", file), ...)
}

# asl: age, sex, length of Chinook salmon (simulated)
asl <- raw("asl.csv")
asl$sex <- factor(asl$sex)

# creel: hours fished per angler by fishery sector (simulated)
creel <- raw("creel.csv")
creel$fishery <- factor(creel$fishery)

# daily_catch / daily_escape: pink salmon, wide format (simulated)
daily_catch  <- raw("daily_catch.csv")
daily_escape <- raw("daily_escape.csv")

# feeding: functional response experiment (simulated)
feeding <- raw("feeding.csv")

# growth: age and length of 100 fish (simulated)
growth <- raw("growth.csv")

# ponds: nutrient addition mesocosm experiment (simulated)
# The original file contains a deliberate spreadsheet error ("#VALUE!") in
# the `chao` column (Exercise 1B of the book). It is converted to NA here;
# the raw file is still available in inst/extdata/ponds.csv.
ponds <- raw("ponds.csv", na.strings = c("NA", "#VALUE!"))
ponds$pond      <- factor(ponds$pond)
ponds$treatment <- factor(ponds$treatment, levels = c("Control", "Add"))
stopifnot(is.numeric(ponds$chao), sum(is.na(ponds$chao)) == 1)

# sockeye_redfish: Redfish Lake sockeye salmon, hatchery vs. wild
# (Kline & Flagg 2004). Called `sockeye` in the book; renamed to avoid a clash
# with the Data4Ecologists `sockeye` data set.
sockeye_redfish <- raw("sockeye.csv")
sockeye_redfish$type <- factor(sockeye_redfish$type)

# streams: width and flow of 20 streams (simulated)
streams <- raw("streams.csv")
streams$state <- factor(streams$state)

save(asl,          file = "data/asl.rda",          compress = "xz")
save(creel,        file = "data/creel.rda",        compress = "xz")
save(daily_catch,  file = "data/daily_catch.rda",  compress = "xz")
save(daily_escape, file = "data/daily_escape.rda", compress = "xz")
save(feeding,      file = "data/feeding.rda",      compress = "xz")
save(growth,       file = "data/growth.rda",       compress = "xz")
save(ponds,        file = "data/ponds.rda",        compress = "xz")
save(sockeye_redfish, file = "data/sockeye_redfish.rda", compress = "xz")
save(streams,      file = "data/streams.rda",      compress = "xz")
