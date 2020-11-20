FROM openanalytics/r-base

# system libraries of general use
RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    libssl1.0.0 

RUN Rscript -e "install.packages('shiny',repos = 'http://cran.us.r-project.org', dependencies=TRUE)"
RUN Rscript -e "install.packages('DT',repos = 'http://cran.us.r-project.org', dependencies=TRUE)"

# copy debug  app
COPY app.R /srv/shiny-server/debug_app/



COPY Rprofile.site /usr/lib/R/etc/

EXPOSE 3838
