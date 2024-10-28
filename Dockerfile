## Original Dockerfile obtained from: https://github.com/yuvipanda/rstudio-binder-template
FROM rocker/binder:4.3.3

## Install Conda as well
RUN mkdir -p /opt/conda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh -O /opt/conda/miniconda.sh \
  && bash /opt/conda/miniconda.sh -b -p /opt/miniconda

## Declares build arguments
ARG NB_USER
ARG NB_UID

COPY --chown=${NB_USER} . ${HOME}

ENV DEBIAN_FRONTEND=noninteractive
USER root
RUN echo "Checking for 'apt.txt'..." \
        ; if test -f "apt.txt" ; then \
        apt-get update --fix-missing > /dev/null\
        && xargs -a apt.txt apt-get install --yes \
        && apt-get clean > /dev/null \
        && rm -rf /var/lib/apt/lists/* \
        ; fi
USER ${NB_USER}

## Add conda installations from environment.yml
COPY environment.yml /tmp
RUN if [-f environment.yml]; then . /opt/miniconda/bin/activate && conda env update --name base --file /tmp/environment.yml

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

