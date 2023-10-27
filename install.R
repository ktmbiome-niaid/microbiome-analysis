install.packages("ggplot2")
install.packages("vegan")
install.packages("ape")
install.packages("ggrepel")
install.packages("picante")

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("phyloseq")
BiocManager::install("Maaslin2")

install.packages("devtools")
install_github("zdk123/SpiecEasi")
