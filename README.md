<!-- README.md is generated from README.Rmd. Please edit that file -->
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/RobertMyles/XKCDdata?branch=master&svg=true)](https://ci.appveyor.com/project/RobertMyles/XKCDdata)

XKCDdata
========

XKCDdata is a little package to get data from individual [xkcd]() comics.

Installation
------------

From CRAN:

``` r
install.packages("XKCDdata")
```

Example:
--------

Let's get this comic (it's number 1421):

![<https://imgs.xkcd.com/comics/future_self.png>](https://imgs.xkcd.com/comics/future_self.png)

``` r
library(XKCDdata)

get_comic(comic = 1421)
#> No encoding supplied: defaulting to UTF-8.
#> # A tibble: 1 x 11
#>   month   num  link  year  news  safe_title
#>   <chr> <int> <chr> <chr> <chr>       <chr>
#> 1     9  1421        2014       Future Self
#> # ... with 5 more variables: transcript <chr>, alt <chr>, img <chr>,
#> #   title <chr>, day <chr>
```
