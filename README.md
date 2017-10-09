<!-- README.md is generated from README.Rmd. Please edit that file -->
XKCDdata
========

XKCDdata is a little package to get data from individual [xkcd](https://xkcd.com/) comics.

Installation
------------

``` r
# install.packages("devtools")
devtools::install_github("RobertMyles/XKCDdata")
```

Example:
--------

Let's get data on this comic (it's number 1421):

![<https://imgs.xkcd.com/comics/future_self.png>](https://imgs.xkcd.com/comics/future_self.png)

``` r
library(XKCDdata)

get_comic(comic = 1421)
#> # A tibble: 1 x 11
#>   month   num                 link  year  news  safe_title
#>   <chr> <int>                <chr> <chr> <chr>       <chr>
#> 1     9  1421 http://xkcd.com/1421  2014       Future Self
#> # ... with 5 more variables: transcript <chr>, alt <chr>, img <chr>,
#> #   title <chr>, day <chr>
```

Or you can get a list of comics pretty easily using purrr, `apply()` or for loops. With purrr, it would be something like:

``` r
# list of comics:
cm <- c(1421, 641, 87, 92)
purrr::map_df(cm, get_comic)
```

Then you could plot it XKCD-style with the [xkcd](http://xkcd.r-forge.r-project.org/) package if you wanted.

Viewing Comics
--------------

Thanks to [Colin](https://github.com/ColinFay), you can view the comics inside your default Viewer (in the Viewer pane if you're on RStudio)! Give it a shot with:

``` r
print_xkcd(1)
```
