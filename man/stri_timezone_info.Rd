% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_zone.R
\name{stri_timezone_info}
\alias{stri_timezone_info}
\title{Query a Given Time Zone}
\usage{
stri_timezone_info(tz = NULL, locale = NULL, display_type = "long")
}
\arguments{
\item{tz}{\code{NULL} or \code{''} for default time zone,
or a single string with time zone ID otherwise}

\item{locale}{\code{NULL} or \code{''} for default locale,
or a single string with locale identifier}

\item{display_type}{single string;
one of \code{'short'}, \code{'long'}, \code{'generic_short'},
\code{'generic_long'}, \code{'gmt_short'}, \code{'gmt_long'},
\code{'common'}, \code{'generic_location'}}
}
\value{
Returns a list with the following named components:
\enumerate{
\item \code{ID} (time zone identifier),
\item \code{Name} (localized human-readable time zone name),
\item \code{Name.Daylight} (localized human-readable time zone
name when DST is used, if available),
\item \code{Name.Windows} (Windows time zone ID, if available),
\item \code{RawOffset} (raw GMT offset, in hours, before taking
daylight savings into account), and
\item \code{UsesDaylightTime} (states whether a time zone uses
daylight savings time in the current Gregorian calendar year).
}
}
\description{
Provides some basic information on a given time zone identifier.
}
\details{
Used to fetch basic information
on any supported time zone.

For more information on time zone representation in \pkg{ICU},
see \code{\link{stri_timezone_list}}.
}
\examples{
stri_timezone_info()
stri_timezone_info(locale='sk_SK')
sapply(c('short', 'long', 'generic_short', 'generic_long',
         'gmt_short', 'gmt_long', 'common', 'generic_location'),
  function(e) stri_timezone_info('Europe/London', display_type=e))

}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other datetime: 
\code{\link{stri_datetime_add}()},
\code{\link{stri_datetime_create}()},
\code{\link{stri_datetime_fields}()},
\code{\link{stri_datetime_format}()},
\code{\link{stri_datetime_fstr}()},
\code{\link{stri_datetime_now}()},
\code{\link{stri_datetime_symbols}()},
\code{\link{stri_timezone_get}()},
\code{\link{stri_timezone_list}()}

Other timezone: 
\code{\link{stri_timezone_get}()},
\code{\link{stri_timezone_list}()}
}
\concept{datetime}
\concept{timezone}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
