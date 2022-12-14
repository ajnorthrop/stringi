% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encoding_conversion.R
\name{stri_enc_fromutf32}
\alias{stri_enc_fromutf32}
\title{Convert From UTF-32}
\usage{
stri_enc_fromutf32(vec)
}
\arguments{
\item{vec}{a list of integer vectors (or objects coercible to such vectors)
or \code{NULL}s. For convenience, a single integer vector can also
be given.}
}
\value{
Returns a character vector (in UTF-8).
\code{NULL}s in the input list are converted to \code{NA_character_}.
}
\description{
This function converts integer vectors,
representing sequences of UTF-32 code points, to UTF-8 strings.
}
\details{
UTF-32 is a 32-bit encoding where each Unicode code point
corresponds to exactly one integer value.

This function is a vectorized version of
\code{\link{intToUtf8}}. As usual in \pkg{stringi},
it returns character strings in UTF-8.
See \code{\link{stri_enc_toutf32}} for a dual operation.

If an ill-defined code point is given, a warning is generated
and the corresponding string is set to \code{NA}.
Note that \code{0}s are not allowed in \code{vec}, as they are used
internally to mark the end of a string (in the C API).


See also \code{\link{stri_encode}} for decoding arbitrary byte sequences
from any given encoding.
}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other encoding_conversion: 
\code{\link{about_encoding}},
\code{\link{stri_enc_toascii}()},
\code{\link{stri_enc_tonative}()},
\code{\link{stri_enc_toutf32}()},
\code{\link{stri_enc_toutf8}()},
\code{\link{stri_encode}()}
}
\concept{encoding_conversion}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
