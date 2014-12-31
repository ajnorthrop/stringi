% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/time_calendar.R
\name{stri_datetime_add}
\alias{stri_datetime_add}
\alias{stri_datetime_add<-}
\title{Date and Time Arithmetic}
\usage{
stri_datetime_add(time, value = 1L, units = "seconds",
  calendar = "gregorian")

stri_datetime_add(time, units = "seconds", calendar = "gregorian") <- value
}
\arguments{
\item{time}{a \code{POSIXct} object}

\item{value}{integer vector; signed number of units to add to a given time}

\item{units}{single string; one of \code{"years"}, \code{"months"},
\code{"weeks"}, \code{"days"}, \code{"hours"}, \code{"minutes"},
\code{"seconds"}, or \code{"milliseconds"}}

\item{calendar}{single string; currently only
the \code{"gregorian"} calendar is supported}
}
\value{
Returns an object of class \code{POSIXst},
which (for compatibility with other base R functions)
also inherits from \code{POSIXct} and \code{POSIX}.
In fact, it is a numeric vector representing the number of seconds
since the UNIX Epoch.

The replacement version of \code{stri_datetime_add} modifies
the state of the \code{time} object.
}
\description{
Modifies a date-time object by adding a specific amount of time units.
}
\details{
Vectorized over \code{time} and \code{value}.

These date-time arithmetic operations are performed under the current
default time zone and locale. The \code{tzone} argument of \code{time}
is ignored.


Note that e.g. January, 31 + 1 month = Feburary, 28 or 29.
}
\examples{
x <- stri_datetime_now()
stri_datetime_add(x, units="months") <- 2
x
stri_datetime_add(x, -2, units="months")
}
\seealso{
Other datetime: \code{\link{stri_datetime_now}};
  \code{\link{stri_datetime_symbols}};
  \code{\link{stri_timezone_get}},
  \code{\link{stri_timezone_set}};
  \code{\link{stri_timezone_info}};
  \code{\link{stri_timezone_list}}
}
