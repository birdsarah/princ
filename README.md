# Install

```sh
$ conda env create
$ R
> install.packages("feather")
> devtools::install_github('IRkernel/IRkernel')
> IRkernel::installspec()
> options(repos = c(
  CRAN = "http://cran.rstudio.com/",
    tessera = "http://packages.tessera.io"))
> install.packages("hbgd")
```
