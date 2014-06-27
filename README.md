---
title: "ngsutils manual"
author: "Sahil Seth"
date: "June 27, 2014"
output:
  html_document:
    toc: no
  pdf_document:
    toc: yes
---



This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


### Setup
```
wget ... and download the reference data and files
## wget download the 
## test R
Rscript --version
## get runflow from github, name of the flow, samplesheet, parameterfile
## wget runflow
```


```r
install.packages('devtools')
require(devtools)
install_github(repo = 'ngsutils', username = 'sahilseth')
```
