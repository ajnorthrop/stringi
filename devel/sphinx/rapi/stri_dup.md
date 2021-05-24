# stri\_dup: Duplicate Strings

## Description

Duplicates each `str`(`e1`) string `times`(`e2`) times and concatenates the results.

## Usage

```r
stri_dup(str, times)

e1 %s*% e2

e1 %stri*% e2
```

## Arguments

|             |                                                                      |
|-------------|----------------------------------------------------------------------|
| `str, e1`   | a character vector of strings to be duplicated                       |
| `times, e2` | an integer vector with the numbers of times to duplicate each string |

## Details

Vectorized over all arguments.

`e1 %s*% e2` and `e1 %stri*% e2` are synonyms for `stri_dup(e1, e2)`

## Value

Returns a character vector.

## Author(s)

[Marek Gagolewski](https://www.gagolewski.com/) and other contributors

## See Also

The official online manual of <span class="pkg">stringi</span> at <https://stringi.gagolewski.com/>

Other join: [`%s+%`](https://stringi.gagolewski.com/rapi/%25s+%25.html)(), [`stri_flatten`](https://stringi.gagolewski.com/rapi/stri_flatten.html)(), [`stri_join_list`](https://stringi.gagolewski.com/rapi/stri_join_list.html)(), [`stri_join`](https://stringi.gagolewski.com/rapi/stri_join.html)()

## Examples




```r
stri_dup('a', 1:5)
## [1] "a"     "aa"    "aaa"   "aaaa"  "aaaaa"
stri_dup(c('a', NA, 'ba'), 4)
## [1] "aaaa"     NA         "babababa"
stri_dup(c('abc', 'pqrst'), c(4, 2))
## [1] "abcabcabcabc" "pqrstpqrst"
"a" %s*% 5
## [1] "aaaaa"
```