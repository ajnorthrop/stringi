% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/random.R
\name{stri_rand_shuffle}
\alias{stri_rand_shuffle}
\title{Randomly Shuffle Code Points in Each String}
\usage{
stri_rand_shuffle(str)
}
\arguments{
\item{str}{character vector}
}
\value{
Returns a character vector.
}
\description{
Generates a (pseudo)random permutation of the code points
in each string.
}
\details{
This operation may result in non-Unicode-normalized
strings and may give peculiar outputs in case of bidirectional strings.

See also \code{\link{stri_reverse}} for reversing the order of code points.
}
\examples{
stri_rand_shuffle(c('abcdefghi', '0123456789'))
# you can do better than this with stri_rand_strings:
stri_rand_shuffle(rep(stri_paste(letters, collapse=''), 10))

}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other random: 
\code{\link{stri_rand_lipsum}()},
\code{\link{stri_rand_strings}()}
}
\concept{random}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
