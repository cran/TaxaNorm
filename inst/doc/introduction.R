## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
#  remotes::install_github("wangziyue57/TaxNorm")

## ----eval = FALSE-------------------------------------------------------------
#  library(TaxaNorm)
#  # library(phyloseq)
#  # library(microbiome)
#  # library(ggplot2)
#  # library(vegan)
#  # library(MASS)

## ----eval = FALSE-------------------------------------------------------------
#  data("TaxaNorm_Example_Input", package = "TaxaNorm")
#  
#  # run normalization
#  TaxaNorm_Example_Output <- TaxaNorm_Normalization(data= TaxaNorm_Example_Input,
#                                           depth = NULL,
#                                           group = sample_data(TaxaNorm_Example_Input)$body_site,
#                                           meta.data = NULL,
#                                    filter.cell.num = 10,
#                                    filter.taxa.count = 0,
#                                    random = FALSE,
#                                    ncores = 1)
#  
#  # run diagnosis test
#  Diagnose_Data <- TaxaNorm_Run_Diagnose(Normalized_Results = TaxaNorm_Example_Output, prev = TRUE, equiv = TRUE, group = sample_data(TaxaNorm_Example_Input)$body_site)
#  
#  

## ----eval = FALSE-------------------------------------------------------------
#  data("TaxaNorm_Example_Input", package = "TaxaNorm")
#  

## ----eval = FALSE-------------------------------------------------------------
#  qc_data <- TaxaNorm_QC_Input(TaxaNorm_Example_Input)

## ----eval = FALSE-------------------------------------------------------------
#  filter.sample.num =1
#  filter.taxa.count = 10
#  taxaIn <- rowSums(abundances(TaxaNorm_Example_Input) > filter.taxa.count) > filter.sample.num
#  TaxaNorm_Example_Input <- prune_taxa(taxaIn, TaxaNorm_Example_Input)

## ----eval = FALSE-------------------------------------------------------------
#  taxaIn <- rowSums(abundances(TaxaNorm_Example_Input)) > 10
#  TaxaNorm_Example_Input <- prune_taxa(taxaIn, TaxaNorm_Example_Input)

## ----eval = FALSE-------------------------------------------------------------
#  qc_data <- TaxNorm_QC_Input(TaxaNorm_Example_Input)

## ----eval = FALSE-------------------------------------------------------------
#  #Pick group from phyloseq object
#  group <- sample_data(TaxaNorm_Example_Input)$body_site
#  #Run Normalization function
#  Normalized_Data <- TaxaNorm_Normalization(data = TaxaNorm_Example_Input,
#                       depth = NULL,
#                       group = group,
#                       filter.taxa.count = 0,
#                       random = TRUE,
#                       ncores = 1)
#  

## ----eval = FALSE-------------------------------------------------------------
#  
#  data("TaxaNorm_Example_Output", package = "TaxaNorm")
#  
#  
#  TaxaNorm_Model_QC(TaxaNormResults = TaxaNorm_Example_Output)

## ----eval = FALSE-------------------------------------------------------------
#  
#  TaxaNorm_NMDS(TaxaNormResults = TaxaNorm_Example_Output, group_column = "body_site")
#  

