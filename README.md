---
title: "Functional BART with Shape Priors: A Bayesian Tree Approach to Constrained Functional Regression"
author: ""
date: ""
mainfont: "Latin Modern Roman"
fontsize: 11pt
geometry: margin=1in
---

# Description

This repository contains code and materials for the work:

\begin{center}
{\Large \textbf{Functional BART with Shape Priors: A Bayesian Tree Approach to Constrained Functional Regression}}
\end{center}

The repository consists of **two main components**:

- An **R package** `FBART` written in C++ and R.  
- An **RMarkdown file** demonstrating the proposed FBART and S-FBART models.

---

# The R Package `FBART`

The file `FBART_1.0.tar.gz` contains the R package implementing the estimation framework developed in the paper.  
The package is primarily written in **C++**, using `RcppArmadilla` for efficient computation.

## Installation

Before installation, ensure the following R packages are available:

- **Rcpp**
- **TruncatedNormal**

For **macOS**, a working **FORTRAN compiler** is required when installing packages from source  
(see: https://mac.r-project.org/tools/).

To install the package from the command line:

```bash
R CMD INSTALL FBART_1.0.tar.gz
```

The package is also installed automatically in the first code chunk of `illustrating_example.Rmd`.

---

# R Files for Illustration

The file **`illustrating_example.Rmd`** provides a complete example demonstrating how to use the FBART and S-FBART models.

- Running the model-fitting section may take several minutes.  
- Output objects are saved in the directory `./Data`.  
- Generated figures are saved in the directory `./Figures`.  
- A compiled PDF version, **`illustrating_example.pdf`**, is included for convenience.

The file **`functions.R`** contains helper functions for summarizing posterior functional estimates.

---

## Data

The folder **`BatteryData`** contains the processed battery dataset derived from  "Severson, Kristen A., et al. "Data-driven prediction of battery cycle life before capacity degradation." Nature Energy 4.5 (2019): 383-391." The authors provide the raw data at: <https://data.matr.io/1/>

Within this folder, we include the following processed files:

- **`BatterySummary.mat`** — Summary information for 124 commercial lithium iron phosphate/graphite cells cycled under fast-charging conditions.
- **`BatteryFeatures.mat`** — A processed feature matrix containing 19 features for each of the 124 batteries.

---