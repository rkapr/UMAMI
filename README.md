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

### Characterized wheat UMAMI Genes

| Gene_A             | Gene_B             | Gene_D             | Triad_ID   |
| ------------------ | ------------------ | ------------------ | ---------- |
| TraesCS1A02G095600 | TraesCS1B02G128000 | TraesCS1D02G104500 | TaUMAMIT1  |
| TraesCS1A02G164700 | TraesCS1B02G181600 | TraesCS1D02G161800 | TaUMAMIT2  |
| TraesCS1A02G256700 | TraesCS1B02G267300 | TraesCS1D02G256100 | TaUMAMIT3  |
| TraesCS1A02G310300 | TraesCS1B02G321500 | TraesCS1D02G309800 | TaUMAMIT4  |
| TraesCS2A02G219700 | TraesCS2B02G245300 | TraesCS2D02G225500 | TaUMAMIT5  |
| TraesCS2A02G516300 | TraesCS2B02G545100 | TraesCS2D02G518100 | TaUMAMIT6  |
| TraesCS2A02G575700 | TraesCS2B02G611600 | TraesCS2D02G586500 | TaUMAMIT7  |
| TraesCS3A02G019600 | TraesCS3B02G026700 | TraesCS3D02G027300 | TaUMAMIT8  |
| TraesCS3A02G196000 | TraesCS3B02G227600 | TraesCS3D02G199100 | TaUMAMIT9  |
| TraesCS3A02G331900 | TraesCS3B02G362000 | TraesCS3D02G325400 | TaUMAMIT10 |
| TraesCS3A02G335900 | TraesCS3B02G366800 | TraesCS3D02G328900 | TaUMAMIT11 |
| TraesCS3A02G339800 | TraesCS3B02G371400 | TraesCS3D02G333300 | TaUMAMIT12 |
| TraesCS4A02G041500 | TraesCS4B02G262500 | TraesCS4D02G262600 | TaUMAMIT13 |
| TraesCS4A02G415600 | TraesCS4B02G316400 | TraesCS4D02G313000 | TaUMAMIT14 |
| TraesCS5A02G015800 | TraesCS5B02G014100 | TraesCS5D02G021800 | TaUMAMIT15 |
| TraesCS5A02G220400 | TraesCS5B02G219500 | TraesCS5D02G228400 | TaUMAMIT16 |
| TraesCS5A02G220500 | TraesCS5B02G219600 | TraesCS5D02G228500 | TaUMAMIT17 |
| TraesCS6A02G008800 | TraesCS6B02G015400 | TraesCS6D02G009800 | TaUMAMIT18 |
| TraesCS6A02G271500 | TraesCS6B02G298700 | TraesCS6D02G251700 | TaUMAMIT19 |
| TraesCS6A02G329600 | TraesCS6B02G360400 | TraesCS6D02G308500 | TaUMAMIT20 |
| TraesCS6A02G329800 | TraesCS6B02G360600 | TraesCS6D02G308700 | TaUMAMIT21 |
| TraesCS6A02G329900 | TraesCS6B02G360700 | TraesCS6D02G308800 | TaUMAMIT22 |
| TraesCS6A02G330000 | TraesCS6B02G360500 | TraesCS6D02G308900 | TaUMAMIT23 |
| TraesCS6A02G330100 | TraesCS6B02G360900 | TraesCS6D02G309000 | TaUMAMIT24 |
| TraesCS7A02G169100 | TraesCS7B02G073900 | TraesCS7D02G170200 | TaUMAMIT25 |
| TraesCS7A02G300400 | TraesCS7B02G201300 | TraesCS7D02G296100 | TaUMAMIT26 |
| TraesCS7A02G409900 | TraesCS7B02G309300 | TraesCS7D02G403100 | TaUMAMIT27 |
| TraesCS7A02G490000 | TraesCS7B02G393200 | TraesCS7D02G476400 | TaUMAMIT28 |

(Also in file: triads_combined.csv)

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




### Phylogenetic Tree

1. Clustal Omega (ebi.co.uk)

![alt text](http://url/to/img.png)

2. Phylogeny.fr

![Phylogeny.fr Phylogenetic tree](https://github.com/rkapr/UMAMI/blob/master/Phylogenetic_analysis/NGphylogeny_fr/interactive_tree_of_life_120dpi.png)

