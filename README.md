<!-- README.md is generated from README.Rmd. Please edit that file -->
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

<https://imgs.xkcd.com/comics/future_self.png>

``` r
library(XKCDdata)

get_comic(comic = 1421)
```
