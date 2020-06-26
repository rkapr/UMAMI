# UMAMI Transporters functional characterization

### Tasks:

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
- [ ] Motif analysis
- [ ] Chromosome map
- [ ] Synteny analysis?

Aditya:
- [ ] Literature survey for introduction
- [ ] Comparative analysis with arabidopsis UMAMI genes
(Aditya, please add as required)


### Results
Figures for aid in designing experiments for verfication

1. Different tissues and stages of development [URGI tissue dataset  https://urgi.versailles.inra.fr/files/RNASeqWheat/]

2. Wheat grain development [NCBI Project: ERP004505]

3. Abiotic stress:

   a. Heat, Drought and combined heat drought stress (Control, 1, 6 Hr after stress) on leaf [NCBI Project: SRP045409]

   b. Salt stress leaf and root (normal vs stresses) [NCBI Project: SRP162799, SRP158842]

   c. Effect of heat stress of grain between contrasting genotypes at different development stages (Z75 and Z85) [NCBI Project: ERP104851]

   d. Effect of drought stress on root of contrasting genotypes [NCBI Project: SRP184701]

   e. Effect of nitrogen stress on leaves and root [NCBI Project: SRP189128]

   f. Effect of 10 day phosphorus starvation root and shoot [NCBI Project: DRP000768]

4. Biotic stress: Septoria tritici blotch resistant and susceptible genotypes 10 and 12 days post inoculation (control vs stressed leaf) [NCBI Project: SRP198337]
https://www.apsnet.org/edcenter/disandpath/fungalasco/pdlessons/Pages/Septoria.aspx

5. Amino acid transport to grain: comparison of low and high grain asparagine genotypes (with and without sulphur stress) [NCBI Project: ERP113638]






