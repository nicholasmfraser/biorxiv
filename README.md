# The effect of bioRxiv preprints on citations and altmetrics

This repository contains code and data for the study entitled **The effect of bioRxiv preprints on citations and altmetrics**. A preprint of this manuscript is available on bioRxiv, [**here**](https://www.biorxiv.org/content/10.1101/673665).

## Background

In this study we investigated citation and altmetric behaviour of preprints uploaded to bioRxiv, as well as for their relevant journal papers.

Data was gathered from several diverse sources. Preprint and article metadata was retrieved from the [bioRxiv website](https://www.bioRxiv.org), [Crossref](https://www.crossref.org/), and from [Scopus](https://www.scopus.com). Scopus access was provided via the [German Competence Centre for Bibliometrics](http://www.forschungsinfo.de/Bibliometrie/en/index.php?id=infrastruktur), who operate a quality assured data infrastructure for conducting bibliometrics research. Scopus data is stored and queried via an Oracle database -  to ensure reprocibility we use a database 'snapshot' which contains all article metadata archived in mid-2018. These data were merged with additional data from Unpaywall (for determining open access status of manuscripts), Altmetric.com (for altmetric counts) and Gender API (for determining the gender of article authors).

All data retrieval, processing and visualisation steps were conducted in R, using the source code in this repository.

## Directories and files

The repository is structured as follows:

* The upper level directory contains R notebooks used for the main data retrieval, analysis and plotting functions used in this study. `bioRxiv_data_retrieval.Rmd` documents the steps used to extract data from the various sources listed above, and output raw data files. `bioRxiv_data_aggregation.Rmd` documents steps to aggregate the raw data sets into more useful datasets for analysis, e.g. by aggregating citation counts at monthly intervals. `bioRxiv_analysis.Rmd` documents the main data analysis steps, including all regression analyses. `bioRxiv_figures.Rmd` is used to render figures displayed in the manuscript.
* `data` contains all raw and aggregated data files (under the folder `analysis`) produced in the course of our study.
* `sql` contains all SQL scripts used to retrieve data from our Scopus database.
* `outputs/figures` contains all figures produced in the study, which are included in the manuscript.