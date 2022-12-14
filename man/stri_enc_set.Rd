% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encoding_management.R
\name{stri_enc_set}
\alias{stri_enc_set}
\alias{stri_enc_get}
\title{Set or Get Default Character Encoding in \pkg{stringi}}
\usage{
stri_enc_set(enc)

stri_enc_get()
}
\arguments{
\item{enc}{single string; character encoding name,
see \code{\link{stri_enc_list}} for the list of supported encodings.}
}
\value{
\code{stri_enc_set} returns a string with
previously used character encoding, invisibly.

\code{stri_enc_get} returns a string with current default character
encoding.
}
\description{
\code{stri_enc_set} sets the encoding used to re-encode strings
internally (i.e., by \R) declared to be in native encoding,
see \link{stringi-encoding} and \code{\link{stri_enc_mark}}.
\code{stri_enc_get} returns the currently used default encoding.
}
\details{
\code{stri_enc_get} is the same as
\code{\link{stri_enc_info}(NULL)$Name.friendly}.

Note that changing the default encoding may have undesired consequences.
Unless you are an expert user and you know what you are doing,
\code{stri_enc_set} should only be used if \pkg{ICU} fails to detect
your system's encoding correctly (while testing \pkg{stringi}
we only encountered such a situation on a very old Solaris machine).
Note that \pkg{ICU} tries to match the encoding part of the \code{LC_CTYPE}
category as given by \code{\link{Sys.getlocale}}.

If you set a default encoding that is neither a superset of ASCII,
nor an 8-bit encoding, a warning will be generated,
see \link{stringi-encoding} for discussion.

\code{stri_enc_set} has no effect if the system ICU assumes that
the default charset is always UTF-8 (i.e., where the internal
\code{U_CHARSET_IS_UTF8} is defined and set to 1), see
\code{\link{stri_info}}.
}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other encoding_management: 
\code{\link{about_encoding}},
\code{\link{stri_enc_info}()},
\code{\link{stri_enc_list}()},
\code{\link{stri_enc_mark}()}
}
\concept{encoding_management}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
