% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats.R
\name{stri_stats_general}
\alias{stri_stats_general}
\title{General Statistics for a Character Vector}
\usage{
stri_stats_general(str)
}
\arguments{
\item{str}{character vector to be aggregated}
}
\value{
Returns an integer vector with the following named elements:
\enumerate{
   \item \code{Lines} - number of lines (number of
   non-missing strings in the vector);
   \item \code{LinesNEmpty} - number of lines with at least
   one non-\code{WHITE_SPACE} character;
   \item \code{Chars} - total number of Unicode code points detected;
   \item \code{CharsNWhite} - number of Unicode code points
   that are not \code{WHITE_SPACE}s;
   \item ... (Other stuff that may appear in future releases of \pkg{stringi}).
}
}
\description{
This function gives general statistics for a character vector,
e.g., obtained by loading a text file with the
\code{\link{readLines}} or \code{\link{stri_read_lines}} function,
where each text line' is represented by a separate string.
}
\details{
None of the strings may contain \code{\\r} or \code{\\n} characters,
otherwise you will get at error.

Below by `white space` we mean the Unicode binary property
\code{WHITE_SPACE}, see \code{stringi-search-charclass}.
}
\examples{
s <- c('Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
       'nibh augue, suscipit a, scelerisque sed, lacinia in, mi.',
       'Cras vel lorem. Etiam pellentesque aliquet tellus.',
       '')
stri_stats_general(s)

}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other stats: 
\code{\link{stri_stats_latex}()}
}
\concept{stats}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
