Preparing for the Workshop
================

Thank you for your interest in joining our workshop on Microbiome Data
Analysis. We are excited to have you!

Before joining us, please install R and RStudio, both of which are
available using the NIH Self Service app. You can find them under the
“Scientific” section.

Once installed, please also install a few packages in RStudio that we will need for
the class. If possible, it would be great if you could do this
beforehand as some of the packages, especially those from Bioconductor,
have difficulty with the NIH network and may not install if you’re on
campus or VPN. We don't expect issues related to this, but it still remains very possible.

The code to install the packages needed is below. You can copy
these lines and paste them in the Console (usually on the bottom-left
part of the screen, with version information and a carot) to start the installation process.

    install.packages("ggplot2")
    install.packages("vegan")
    install.packages("ape")
    install.packages("ggrepel")
    install.packages("picante")

    install.packages("BiocManager")

    BiocManager::install("phyloseq")
    BiocManager::install("Maaslin2")

I am also trying out a tool called “Binder” that sets up a temporary
environment with RStudio and all of these packages, plus the materials,
pre-installed. If local installation isn’t possible by the start of the
workshop, you can try it out (the button is below and also on the front page for this class). I’d be very
interested in any feedback you have!

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ktmbiome-niaid/microbiome-analysis/HEAD?urlpath=rstudio)

If you have any trouble installing packages or the Binder link isn’t
working, reach out to Katie at <kathryn.mccauley@nih.gov>.
