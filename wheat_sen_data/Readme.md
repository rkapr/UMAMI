TPM counts for wheat senescence time series:

Kallisto estimated tpm counts,average of all replicates (Used for heatmaps and barplots):  
`sen_data_mean_all_kallisto.tsv`: for all genes. 
`sen_data_mean_UMAMIT_kallisto.tsv`: for 128 UMAMI genes with triads  
`sen_data_triad.tsv`: sum of triads

HISAT2/featureCounts estimated TPM counts (Not used) average of all replicates. 
`sen_data_mean_all_featurecounts.tsv`:  for all genes.   
`sen_data_mean_UMAMIT_featurecounts.tsv` : for 128 UMAMI genes with triads.  

Unix commands for extracting genes of interest:  
`head -n 1 sen_data_mean_all_kallisto.tsv > genes_of_interest_expression.tsv`.  
`grep -Ff genes_of_interest.txt sen_data_mean_all_kallisto.tsv >> genes_of_interest_expression.tsv`.  