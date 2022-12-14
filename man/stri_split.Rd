% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search_split_4.R
\name{stri_split}
\alias{stri_split}
\alias{stri_split_fixed}
\alias{stri_split_regex}
\alias{stri_split_coll}
\alias{stri_split_charclass}
\title{Split a String By Pattern Matches}
\usage{
stri_split(str, ..., regex, fixed, coll, charclass)

stri_split_fixed(
  str,
  pattern,
  n = -1L,
  omit_empty = FALSE,
  tokens_only = FALSE,
  simplify = FALSE,
  ...,
  opts_fixed = NULL
)

stri_split_regex(
  str,
  pattern,
  n = -1L,
  omit_empty = FALSE,
  tokens_only = FALSE,
  simplify = FALSE,
  ...,
  opts_regex = NULL
)

stri_split_coll(
  str,
  pattern,
  n = -1L,
  omit_empty = FALSE,
  tokens_only = FALSE,
  simplify = FALSE,
  ...,
  opts_collator = NULL
)

stri_split_charclass(
  str,
  pattern,
  n = -1L,
  omit_empty = FALSE,
  tokens_only = FALSE,
  simplify = FALSE
)
}
\arguments{
\item{str}{character vector; strings to search in}

\item{...}{supplementary arguments passed to the underlying functions,
including additional settings for \code{opts_collator}, \code{opts_regex},
\code{opts_fixed}, and so on}

\item{pattern, regex, fixed, coll, charclass}{character vector;
search patterns; for more details refer to \link{stringi-search}}

\item{n}{integer vector, maximal number of strings to return,
and, at the same time, maximal number of text boundaries to look for}

\item{omit_empty}{logical vector; determines whether empty
tokens should be removed from the result (\code{TRUE} or \code{FALSE})
or replaced with \code{NA}s (\code{NA})}

\item{tokens_only}{single logical value;
may affect the result if \code{n} is positive, see Details}

\item{simplify}{single logical value;
if \code{TRUE} or \code{NA}, then a character matrix is returned;
otherwise (the default), a list of character vectors is given, see Value}

\item{opts_collator, opts_fixed, opts_regex}{a named list used to tune up
the search engine's settings; see
\code{\link{stri_opts_collator}}, \code{\link{stri_opts_fixed}},
and \code{\link{stri_opts_regex}}, respectively; \code{NULL}
for the defaults}
}
\value{
If \code{simplify=FALSE} (the default),
then the functions return a list of character vectors.

Otherwise, \code{\link{stri_list2matrix}} with \code{byrow=TRUE}
and \code{n_min=n} arguments is called on the resulting object.
In such a case, a character matrix with an appropriate number of rows
(according to the length of \code{str}, \code{pattern}, etc.)
is returned. Note that \code{\link{stri_list2matrix}}'s \code{fill} argument
is set to an empty string and \code{NA}, for \code{simplify} equal to
\code{TRUE} and \code{NA}, respectively.
}
\description{
These functions split each element in \code{str} into substrings.
\code{pattern} defines the delimiters that separate the inputs into tokens.
The input data between the matches become the fields themselves.
}
\details{
Vectorized over \code{str}, \code{pattern}, \code{n}, and \code{omit_empty}
(with recycling of the elements in the shorter vector if necessary).

If \code{n} is negative, then all pieces are extracted.
Otherwise, if \code{tokens_only} is \code{FALSE} (which is the default),
then \code{n-1} tokens are extracted (if possible) and the \code{n}-th string
gives the remainder (see Examples).
On the other hand, if \code{tokens_only} is \code{TRUE},
then only full tokens (up to \code{n} pieces) are extracted.

\code{omit_empty} is applied during the split process: if it is set to
\code{TRUE}, then tokens of zero length are ignored. Thus, empty strings
will never appear in the resulting vector. On the other hand, if
\code{omit_empty} is \code{NA}, then empty tokens are substituted with
missing strings.

Empty search patterns are not supported. If you wish to split a
string into individual characters, use, e.g.,
\code{\link{stri_split_boundaries}(str, type='character')} for THE Unicode way.

\code{stri_split} is a convenience function. It calls either
\code{stri_split_regex}, \code{stri_split_fixed}, \code{stri_split_coll},
or \code{stri_split_charclass}, depending on the argument used.
}
\examples{
stri_split_fixed('a_b_c_d', '_')
stri_split_fixed('a_b_c__d', '_')
stri_split_fixed('a_b_c__d', '_', omit_empty=TRUE)
stri_split_fixed('a_b_c__d', '_', n=2, tokens_only=FALSE) # 'a' & remainder
stri_split_fixed('a_b_c__d', '_', n=2, tokens_only=TRUE) # 'a' & 'b' only
stri_split_fixed('a_b_c__d', '_', n=4, omit_empty=TRUE, tokens_only=TRUE)
stri_split_fixed('a_b_c__d', '_', n=4, omit_empty=FALSE, tokens_only=TRUE)
stri_split_fixed('a_b_c__d', '_', omit_empty=NA)
stri_split_fixed(c('ab_c', 'd_ef_g', 'h', ''), '_', n=1, tokens_only=TRUE, omit_empty=TRUE)
stri_split_fixed(c('ab_c', 'd_ef_g', 'h', ''), '_', n=2, tokens_only=TRUE, omit_empty=TRUE)
stri_split_fixed(c('ab_c', 'd_ef_g', 'h', ''), '_', n=3, tokens_only=TRUE, omit_empty=TRUE)

stri_list2matrix(stri_split_fixed(c('ab,c', 'd,ef,g', ',h', ''), ',', omit_empty=TRUE))
stri_split_fixed(c('ab,c', 'd,ef,g', ',h', ''), ',', omit_empty=FALSE, simplify=TRUE)
stri_split_fixed(c('ab,c', 'd,ef,g', ',h', ''), ',', omit_empty=NA, simplify=TRUE)
stri_split_fixed(c('ab,c', 'd,ef,g', ',h', ''), ',', omit_empty=TRUE, simplify=TRUE)
stri_split_fixed(c('ab,c', 'd,ef,g', ',h', ''), ',', omit_empty=NA, simplify=NA)

stri_split_regex(c('ab,c', 'd,ef  ,  g', ',  h', ''),
   '\\\\p{WHITE_SPACE}*,\\\\p{WHITE_SPACE}*', omit_empty=NA, simplify=TRUE)

stri_split_charclass('Lorem ipsum dolor sit amet', '\\\\p{WHITE_SPACE}')
stri_split_charclass(' Lorem  ipsum dolor', '\\\\p{WHITE_SPACE}', n=3,
   omit_empty=c(FALSE, TRUE))

stri_split_regex('Lorem ipsum dolor sit amet',
   '\\\\p{Z}+') # see also stri_split_charclass

}
\seealso{
The official online manual of \pkg{stringi} at \url{https://stringi.gagolewski.com/}

Gagolewski M., \pkg{stringi}: Fast and portable character string processing in R, \emph{Journal of Statistical Software} 103(2), 2022, 1-59, \doi{10.18637/jss.v103.i02}

Other search_split: 
\code{\link{about_search}},
\code{\link{stri_split_boundaries}()},
\code{\link{stri_split_lines}()}
}
\concept{search_split}
\author{
\href{https://www.gagolewski.com/}{Marek Gagolewski} and other contributors
}
