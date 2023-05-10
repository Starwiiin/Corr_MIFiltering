# MIFilter
================
Parvin Mohammadiarvejeh, Motahareh Kashanian, Atefeh Anisi
2023-05-09

<!-- [![R-CMD-check](https://github.com/Starwiiin/Corr_MIFiltering/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Starwiiin/Corr_MIFiltering/actions/workflows/R-CMD-check.yaml) -->
<!-- [![Coverage status](https://codecov.io/gh/Starwiiin/Corr_MIFiltering/branch/main/graph/badge.svg)](https://codecov.io/github/Starwiiin/Corr_MIFiltering?branch=main) -->


<a href="https://Starwiiin.github.io/Corr_MIFiltering/"><img src="logo.png" align="right" height="139" /></a>

# scoreLR <img src="man/figures/logo.png" align="right" height="139" />

<!-- # scoreLR -->

<!-- badges: start -->


<!-- badges: end -->

The goal of the `MIFilter` package is to offer a sub-list of features in `classification` problems when there are too many features and the computational cost is very high. MIFilter will give you a `sub-list` of the features with the highest effect on the response variable and get rid of the less important ones. This package also offers two plots which help you understand everything about the features in your dataset.


## Requirements

The following have to be installed and configured on the device in order
for `MIFilter` to work successfully.


- [R Statistical Computing Software, 2.1 or
  later](https://www.r-project.org/).

- Installation of the following packages for R:

  - `dataPreparation`
  - `magrittr`
  - `mpmi`
  - `plotly`
  - `shiny`
  - `stats`

## Installation

You can install the MIFilter from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Starwiiin/Corr_MIFiltering")
```


## Load library

``` r
library(MIFilter)
```

## Example

How do you use `MIFilter` package?

Read a dataset in that has the following columns:

-   `Features`: the data related to different features can be found on different columns.         These do not have to be named in an specific way.
-   `response variable`: the ground truth for the classification problem.

The following dataset is included in the package:

``` r
data(X_train)
data(y_train)
data(X_test)
data(y_test)
```

The `correlation_based_filtering` function has 3 outputs. The `reduced version of X_train`, the `reduced version of X_test` and The `features list`.

``` r
filtering_function_output = correlation_based_filtering(X_train, y_train, MI_threshold = 0.01, cor_threshold = 0.95, X_test)

reduced_X_train = filtering_function_output$x1
reduced_X_test = filtering_function_output$x2
features_list = filtering_function_output$x3

```

The `scaling_train_test` function will scale all the data in X_train and X_test and has two outputs.

```r
scaling_function_output = scaling_train_test(reduced_X_train, reduced_X_test)

scaled_X_train = scaling_function_output$y1
scaled_X_test = scaling_function_output$y2

```

Any type pf classification models can be applied then. The model should be fitted and tested on the train and test data sets respectively. 

`MI_analysis_plot` is a 3D plot which shows the relation of `MI_threshold` and `mean MI` of the chosen features.

```r
test_plot = MI_analysis_plot(0.001, 0.07, 0.01, X_train, y_train, X_test, 0.95)
test_plot

```

`MI_cor_plot` is a 3D plot which shows the relation of `MI_threshold` and `mean correlation` of the chosen features.

```r

```

## Source

Mohammadiarvejeh, Parvin. “lalalala” (2021).