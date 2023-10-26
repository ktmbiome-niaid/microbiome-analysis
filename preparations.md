## Preparing for the Workshop

Thank you for your interest in joining our workshop on Microbiome Data Analysis. We are excited to have you!

Before joining us, please install R and RStudio, both of which are available using the NIH Self Service app. You can find them under the "Scientific" section.

Once installed, please also install a few packages that we will need for the class. If possible, it would be great if you could do this beforehand, as some of the packages have difficulty with the NIH network and may not install if you're on VPN or on campus.

The code to install the packages needed is below. You can just copy these lines and paste them in the Console (usually on the bottom-left part of the screen, with version information and a carot).

```
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("phyloseq")

install.packages("ggplot2")
install.packages("vegan")
install.packages("ape")
```

If you have any trouble installing packages, please reach out to Katie at kathryn.mccauley@nih.gov.