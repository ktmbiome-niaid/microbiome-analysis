install.packages("rmarkdown")
install.packages("ggplot2")
install.packages("vegan")
install.packages("ape")
install.packages("ggrepel")
install.packages("picante")
install.packages("igraph")

install.packages("BiocManager")

BiocManager::install("phyloseq")
BiocManager::install("Maaslin2")

install.packages("devtools")
devtools::install_github("zdk123/SpiecEasi")

## If you have trouble installing the above package on your computer, try running the following commands in Terminal:
##    mkdir -p $HOME/.R
##    echo "FLIBS=-L/opt/local/lib/gcc48/" > $HOME/.R/Makevars

## I initially ran into some errors relating to gfortran and this resolves the issue.
## These commands were found here: https://github.com/zdk123/SpiecEasi/issues/217#issuecomment-1489172072
