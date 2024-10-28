install.packages("ggplot2")
install.packages("vegan")
install.packages("ape")
install.packages("ggrepel")
install.packages("picante")

install.packages("BiocManager")

BiocManager::install("phyloseq")
#BiocManager::install("Maaslin2")
## Trouble installing glmmTMB, installing github development release:
install.packages("devtools")
devtools::install_github("biobakery/Maaslin2")
## If this doesn't work, consider installing dependencies of Maaslin2 (like glmmTMB) before installing Maaslin2? Or create a new repo and only install glmmTMB?
