% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encoding_management.R
\name{stri_enc_mark}
\alias{stri_enc_mark}
\title{Get Declared Encodings of Each String}
\usage{
stri_enc_mark(str)
}
\arguments{
\item{str}{character vector
or an object coercible to a character vector}
}
\value{
Returns a character vector of the same length as \code{str}.
Unlike in the \code{\link{Encoding}} function, here the possible encodings are:
\code{ASCII}, \code{latin1}, \code{bytes}, \code{native},
and \code{UTF-8}. Additionally, missing values are handled properly.

This gives exactly the same data that is used by
all the functions in \pkg{stringi} to re-encode their inputs.
}
\description{
Reads declared encodings for each string in a character vector
as seen by \pkg{stringi}.
}
\details{
According to \code{\link{Encoding}},
\R has a simple encoding marking mechanism:
strings can be declared to be in \code{latin1},
\code{UTF-8} or \code{bytes}.

Moreover, we may check (via the R/C API) whether
a string is in ASCII (\R assumes that this holds if and only if
all bytes in a string are not greater than 127,
so there is an implicit assumption that your platform uses
an encoding that extends ASCII)
or in the system's default (a.k.a. \code{unknown} in \code{\link{Encoding}})
encoding.

Intuitively, the default encoding should be equivalent to
the one you use on \code{stdin} (e.g., your 'keyboard').
In \pkg{stringi} we assume that such an encoding
is equivalent to the one returned by \code{\link{stri_enc_get}}.
It is automatically detected by \pkg{ICU}
to match -- by default -- the encoding part of the \code{LC_CTYPE} category
as given by \code{\link{Sys.getlocale}}.
}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other encoding_management: 
\code{\link{about_encoding}},
\code{\link{stri_enc_info}()},
\code{\link{stri_enc_list}()},
\code{\link{stri_enc_set}()}
}
\concept{encoding_management}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
