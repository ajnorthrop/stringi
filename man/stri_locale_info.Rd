% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locale_management.R
\name{stri_locale_info}
\alias{stri_locale_info}
\title{Query Given Locale}
\usage{
stri_locale_info(locale = NULL)
}
\arguments{
\item{locale}{\code{NULL} or \code{''} for default locale,
or a single string with locale identifier.}
}
\value{
Returns a list with the following named character strings:
\code{Language}, \code{Country}, \code{Variant}, and
\code{Name}, being their underscore separated combination.
}
\description{
Provides some basic information on a given locale identifier.
}
\details{
With this function you may obtain some basic information
on any provided locale identifier,
even if it is unsupported by \pkg{ICU} or if you pass a malformed locale
identifier (the one that is not, e.g., of the form Language_Country).
See \link{stringi-locale} for discussion.

This function does not do anything really complicated. In many
cases it is similar to a call to
\code{\link{as.list}(\link{stri_split_fixed}(locale, '_', 3L)[[1]])},
with \code{locale} case mapped.
It may be used, however, to get insight on how ICU understands a given
locale identifier.
}
\examples{
stri_locale_info('pl_PL')
stri_locale_info('Pl_pL') # the same result

}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other locale_management: 
\code{\link{about_locale}},
\code{\link{stri_locale_list}()},
\code{\link{stri_locale_set}()}
}
\concept{locale_management}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
