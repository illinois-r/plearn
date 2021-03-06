
<!-- README.md is generated from README.Rmd. Please edit that file -->

# plearn

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/illinois-r/plearn.svg?branch=master)](https://travis-ci.org/illinois-r/plearn)
[![Codecov test
coverage](https://codecov.io/gh/illinois-r/plearn/branch/master/graph/badge.svg)](https://codecov.io/gh/illinois-r/plearn?branch=master)
<!-- badges: end -->

The goal of `plearn` is to simplify working with the
[PrairieLearn](https://prairielearn.engr.illinois.edu/pl) platform by
automating the creation of common questions.

## Installation

You can install the development version from
[GitHub](https://github.com/illinois-r/plearn) with:

``` r
# install.packages("devtools")
devtools::install_github("illinois-r/plearn")
```

## Development Status

Workflow with this package is highly experimental and is likely to be
tuned over the next school year. That said, using the templates in the
package now with PrairieLearn will likely be fine. However, these
templates are using PrairieLearn-specific markup, e.g `<pl-*></pl-*>` as
part of the question creation procedure. In the future, the package will
likely move toward using [`asciidoc`](http://asciidoc.org/) standard,
which would allow questions to be written agnostic to the PrairieLearn
platform. This would defend against or provide compatibility with a
change from `v3` to `v4`.

## Motivation

After working on
[PrairieLearn](https://prairielearn.engr.illinois.edu/pl) problems for
awhile, I realized how much I would like to apply the
[`usethis`](https://github.com/r-lib/usethis) package mentality for
generating questions. As a result, this package extends
[`usethis`](https://github.com/r-lib/usethis) where applicable into
question and course creation.

## License

Portions of the code related to PrairieLearn are released under:

GPL (\>= 2)
