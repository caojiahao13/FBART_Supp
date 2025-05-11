# Description
---

We provide some codes for the work:

<center>  <font size="+0.5" color="blue"><b>Functional Bayesian Additive Regression Trees with Shape Constraints</b></font> </center>

In general, our files can be divided into **two parts**:   
* An <font color="red"><b>R package</b></font> `FBART` package written in `C++` and `R`.
* Using this package, <font color="blue">an RMarkdown file</font> is provided to demonstrate the proposed FBART and S-FBART.

## The R Package `FBART`
 
We provide an <font color="red"><b>R package</b></font> in file `FBART_1.0.tar.gz`, for the estimation framework proposed in the paper. This package is mainly written in `C++`, with the help of `RcppArmadillo`.

To <font color="red">install</font> this package, make sure the R packages `Rcpp` and `TruncatedNormal` are available. Also, for macOS, you need a FORTRAN compiler to compile R packages from sources (<a href="https://mac.r-project.org/tools/">see this guidance</a>). 

This package will be installed in the first code chunk in `illustrating_example.Rmd`. You can also install it in command line: 
```
R CMD INSTALL FBART_1.0.tar.gz
```
 

## R Files for Illustration
 
The <font color="blue">RMarkdown file</font>, `illustrating_example.Rmd`,  gives an illustrating example to demonstrate the use of our methods. 
* In this Rmd file, running the model fitting chunk can take a few minutes.
* The running results are stored in folder `./Data`, and the generated figures are stored in folder `./Figures`. 
* The generated PDF file `illustrating_example.pdf` is provided.

The R file, `functions.R`, provides an `R` function that summarizes the posterior curves.
