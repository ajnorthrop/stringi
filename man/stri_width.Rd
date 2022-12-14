% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/length.R
\name{stri_width}
\alias{stri_width}
\title{Determine the Width of Code Points}
\usage{
stri_width(str)
}
\arguments{
\item{str}{character vector or an object coercible to}
}
\value{
Returns an integer vector of the same length as \code{str}.
}
\description{
Approximates the number of text columns the `cat()` function
might use to print a string using a mono-spaced font.
}
\details{
The Unicode standard does not formalize the notion of a character
width. Roughly based on \url{http://www.cl.cam.ac.uk/~mgk25/ucs/wcwidth.c},
\url{https://github.com/nodejs/node/blob/master/src/node_i18n.cc},
and UAX #11 we proceed as follows.
The following code points are of width 0:
\itemize{
\item code points with general category (see \link{stringi-search-charclass})
\code{Me}, \code{Mn}, and \code{Cf}),
\item \code{C0} and \code{C1} control codes (general category \code{Cc})
- for compatibility with the \code{\link{nchar}} function,
\item Hangul Jamo medial vowels and final consonants
(code points with enumerable property \code{UCHAR_HANGUL_SYLLABLE_TYPE}
equal to \code{U_HST_VOWEL_JAMO} or \code{U_HST_TRAILING_JAMO};
note that applying the NFC normalization with \code{\link{stri_trans_nfc}}
is encouraged),
\item ZERO WIDTH SPACE (U+200B),
}

Characters with the \code{UCHAR_EAST_ASIAN_WIDTH} enumerable property
equal to \code{U_EA_FULLWIDTH} or \code{U_EA_WIDE} are
of width 2.

Most emojis and characters with general category So (other symbols)
are of width 2.

SOFT HYPHEN (U+00AD) (for compatibility with \code{\link{nchar}})
as well as any other characters have width 1.
}
\examples{
stri_width(LETTERS[1:5])
stri_width(stri_trans_nfkd('\u0105'))
stri_width(stri_trans_nfkd('\U0001F606'))
stri_width( # Full-width equivalents of ASCII characters:
   stri_enc_fromutf32(as.list(c(0x3000, 0xFF01:0xFF5E)))
)
stri_width(stri_trans_nfkd('\ubc1f')) # includes Hangul Jamo medial vowels and final consonants
}
\references{
\emph{East Asian Width} -- Unicode Standard Annex #11,
\url{https://www.unicode.org/reports/tr11/}
}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other length: 
\code{\link{\%s$\%}()},
\code{\link{stri_isempty}()},
\code{\link{stri_length}()},
\code{\link{stri_numbytes}()},
\code{\link{stri_pad_both}()},
\code{\link{stri_sprintf}()}
}
\concept{length}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
