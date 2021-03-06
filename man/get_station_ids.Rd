% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_station_ids.R
\name{get_station_ids}
\alias{get_station_ids}
\title{Get station IDs}
\usage{
get_station_ids(stn_df)
}
\arguments{
\item{stn_df}{a data frame of stations that is obtained
with (and often filtered by) the \code{get_isd_stations}
function.}
}
\value{
Returns a character vector of length 
\code{nrow(stn_df)}.
}
\description{
Obtain the station IDs needed as input
for the \code{get_isd_station_data} function.
}
\examples{
\dontrun{
library(dplyr)

# Get a listing of all station IDs in France
df <- 
  get_isd_stations() \%>\% 
  filter(country == "FR")
 
# Get the related station IDs
ids <- get_station_ids(df)

# Get the data
get_isd_station_data(
  station_id = ids, 
  full_data = TRUE, 
  startyear = 2013, 
  endyear = 2014)
}
}

