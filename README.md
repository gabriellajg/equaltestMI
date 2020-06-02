# equaltestMI
This package includes a number of functions for users to examine measurement invariance via equivalence testing along with adjusted RMSEA cutoff values. In particular, a projection-based method is implemented to test the equality of latent factor means across groups without assuming the equality of intercepts.

Users can install the package from CRAN:

```{r setup, message=FALSE, warning=FALSE}
## load package
install.packages("equaltestMI")
library(equaltestMI)
```

or install the most recent version from the maintainer's GitHub repository:

```{r setup2, message=FALSE, warning=FALSE}
# install.packages("devtools")
# library(devtools)
devtools::install_github("gabriellajg/equaltestMI", force=TRUE)
library(equaltestMI)
```
