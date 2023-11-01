Preparing for the Workshop
================
Katie McCauley
2023-11-01

Thank you for your interest in joining our workshop on Microbiome Data
Analysis. We are excited to have you!

Before joining us, please install R and RStudio, both of which are
available using the NIH Self Service app. You can find them under the
“Scientific” section.

Once installed, please also install a few packages that we will need for
the class. If possible, it would be great if you could do this
beforehand, as some of the packages have difficulty with the NIH network
and may not install if you’re on VPN or on campus.

The code to install the packages needed is below. You can just copy
these lines and paste them in the Console (usually on the bottom-left
part of the screen, with version information and a carot).

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
    devtools::install_github("zdk123/SpiecEasi")

    ## If you have trouble installing the above package on your computer, try running the following commands in Terminal:
    ##    mkdir -p $HOME/.R
    ##    echo "FLIBS=-L/opt/local/lib/gcc48/" > $HOME/.R/Makevars

    ## I initially ran into some errors relating to gfortran and this resolves the issue.
    ## These commands were found here: https://github.com/zdk123/SpiecEasi/issues/217#issuecomment-1489172072

If you have any trouble installing packages, please reach out to Katie
at <kathryn.mccauley@nih.gov>.
