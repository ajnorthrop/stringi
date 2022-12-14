% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encoding_management.R
\name{stri_enc_info}
\alias{stri_enc_info}
\title{Query a Character Encoding}
\usage{
stri_enc_info(enc = NULL)
}
\arguments{
\item{enc}{\code{NULL} or \code{''} for the default encoding,
or a single string with encoding name}
}
\value{
Returns a list with the following components:
\itemize{
\item \code{Name.friendly} -- friendly encoding name:
    MIME Name or JAVA Name or \pkg{ICU} Canonical Name
   (the first of provided ones is selected, see below);
\item \code{Name.ICU} -- encoding name as identified by \pkg{ICU};
\item \code{Name.*} -- other standardized encoding names,
e.g., \code{Name.UTR22}, \code{Name.IBM}, \code{Name.WINDOWS},
\code{Name.JAVA}, \code{Name.IANA}, \code{Name.MIME} (some of them
may be unavailable for all the encodings);
\item \code{ASCII.subset} -- is ASCII a subset of the given encoding?;
\item \code{Unicode.1to1} -- for 8-bit encodings only: are all characters
translated to exactly one Unicode code point and is the translation
scheme reversible?;
\item \code{CharSize.8bit} -- is this an 8-bit encoding, i.e., do we have
   \code{CharSize.min == CharSize.max} and \code{CharSize.min == 1}?;
\item \code{CharSize.min} -- minimal number of bytes used
   to represent a UChar (in UTF-16, this is not the same as UChar32)
\item \code{CharSize.max} -- maximal number of bytes used
   to represent a UChar (in UTF-16, this is not the same as UChar32,
   i.e., does not reflect the maximal code point representation size)
}
}
\description{
Gets basic information on a character encoding.
}
\details{
An error is raised if the provided encoding is unknown to \pkg{ICU}
(see \code{\link{stri_enc_list}} for more details).
}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other encoding_management: 
\code{\link{about_encoding}},
\code{\link{stri_enc_list}()},
\code{\link{stri_enc_mark}()},
\code{\link{stri_enc_set}()}
}
\concept{encoding_management}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
