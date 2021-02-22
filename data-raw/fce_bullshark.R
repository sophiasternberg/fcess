## code to prepare `fce_bullshark` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
fce_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-fce.1167.3&entityid=43fd56620465a0ea587bc20e690dc7d6"

# Download the data package with metajam
fce_download <- download_d1_data(data_url = fce_url, path = tempdir())

# Read in data
fce_files <- read_d1_files(fce_download)
fce_bullshark <- fce_files$data

usethis::use_data(fce_bullshark, overwrite = TRUE)
