install.packages("ggplot2")
install.packages("vegan")
install.packages("ape")
install.packages("ggrepel")

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("phyloseq")
BiocManager::install("Maaslin2")
