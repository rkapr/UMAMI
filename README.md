# UMAMI Transporters functional characterization

Tasks:

Rajan:
- [x] Get UMAMI genes in Arabidopsis
- [x] Get protein sequences from bioMart
- [x] Protein blast against wheat genome: evalue cut off 1e-10
- [x] Post processing: top 10 wheat genes for each arabidopsis UMAMI gene (result 129 genes in total)
- [x] Get nucleotide sequences for selected wheat genes
- [x] Muscle based multiple sequence alignment (MSA) for each arabidopsis UMAMI gene to its top 10 wheat blastp matches, neighborhood joining phylogenetic tree (programmatically using EBI REST API)
- [x] Maximum likelihood phylogenetic tree of all wheat and Arabidopis UMAMI genes combined using NGphylogeny.fr. 
- [x] MSA alignment of all sequences using Clustal omega on EBI and resulting phylogenetic tree
- [x] Protein domain based search: Identify prominent IPR and PF domains in arabidopsis UMAMI genes
- [x] Search additional potential UMAMI genes using prominent interpro (IPR) domains (result 205 potential UMAMI genes)
- [x] Search high confidence blast result genes for high confidence triads (A,B,D homeologs) in Science wheat genome paper [result: 28 triads (84 genes) of 129 genes from blast]
- [x] Collect and process publicly available RNAseq datasets, extract expression for UMAMI genes with available triads
- [x] Create heatmaps (comparing triads: sum of expression of all homeologs, take mean of multiple samples) and barplots (comparing differnt homeologs)
- [ ] Draw conclusions for potential functions of UMAMI genes, differential function of homeologs
- [ ] Create Venn diagrams of triads based on functions: involvement is stresses, growth
- [ ] ? Get triads for remaining genes by closest blastn ?

Aditya:
- [] Literature survey for introduction
- [] Comparative analysis with arabidopsis UMAMI genes
(Aditya, please add as required)
