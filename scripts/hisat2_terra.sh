#!/bin/bash
##ENVIRONMENT SETTINGS; CHANGE WITH CAUTION
#SBATCH --export=NONE                #Do not propagate environment
#SBATCH --get-user-env=L             #Replicate login environment

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=hisat2_map      #Set the job name to "JobExample2"
#SBATCH --time=2:00:00               #Set the wall clock limit to 6hr and 30min
#SBATCH --ntasks=72         #72 for hisat-build           #Request 1 node
#SBATCH --ntasks-per-node=72     #18 for hisat-build     #Request 8 tasks/cores per node
#SBATCH --mem=60G                   #60G for hisat-build  #Request 8GB per node 
#SBATCH --output=bam_files/hisat2_2/T1_S1/hisat2_mapT1S1_fr.%j      #Send stdout/err to "Example2Out.[jobID]" 

##OPTIONAL JOB SPECIFICATIONS
#SBATCH --account=122825950093             #Set billing account to 123456
#SBATCH --partition=knl
#SBATCH --mail-type=ALL              #Send email on all job events
#SBATCH --mail-user=r.kapoor@tamu.edu    #Send all emails to email_address

module load HISAT2/2.1.0-intel-2017b


#Refdir=index/
#hisat2-build -p 72 --ss splicesites.tsv --exon exons.tsv keller/Sorghum_bicolor_genome.fa $Refdir
#file1=../URGI_data/leaf_Z10_rep1/rqcfilter_mito_chloro_cleaned/ATW_TOSW_8_1_B0684ABXX.IND2.anqdpt.fastq
#file2=../URGI_data/leaf_Z10_rep1/rqcfilter_mito_chloro_cleaned/ATW_TOSW_8_2_B0684ABXX.IND2.anqdpt.fastq
#Outdir=

#for sample in $(echo T{1..9}_S1); do \
##sample=T1_S2
#echo "Mapping Sample: $sample..."
#fileIn=keller/data/*${sample}
#fileOut=bam_files/hisat2/$sample/${sample}.sam
##hisat2-build -p 72 --ss splicesites.tsv --exon exons.tsv --snp hisat2_extracted_.snp --haplotype hisat2_extracted_.haplotype keller/Sorghum_bicolor_genome.fa $Refdir
##hisat2 -p 72 -x index/ -1 ${fileIn}_R1.fastq.gz -2 ${fileIn}_R2.fastq.gz -S $fileOut --rna-strandness RF --dta --min-intronlen 20 --max-intronlen 50000 --rf
#hisat2 -p 72 -x index_snp/ -1 ${fileIn}_R1.fastq.gz -2 ${fileIn}_R2.fastq.gz -S $fileOut --rna-strandness RF  --dta --min-intronlen 20 --max-intronlen 50000 
#done

#for sample in $(echo T9_S{1,2}); do \
#sample=T1_S2
#echo "Mapping Sample: $sample..."
#fileIn=keller/data/*${sample}
#fileOut=bam_files/hisat2/$sample/${sample}.sam
#hisat2-build -p 72 --ss splicesites.tsv --exon exons.tsv --snp hisat2_extracted_.snp --haplotype hisat2_extracted_.haplotype keller/Sorghum_bicolor_genome.fa $Refdir
#hisat2 -p 72 -x index/ -1 ${fileIn}_R1.fastq.gz -2 ${fileIn}_R2.fastq.gz -S $fileOut --rna-strandness RF --dta --min-intronlen 20 --max-intronlen 50000 --rf
#hisat2 -p 72 -x index_snp/ -1 ${fileIn}_R1.fastq.gz -2 ${fileIn}_R2.fastq.gz -S $fileOut --rna-strandness RF  --dta --min-intronlen 20 --max-intronlen 50000
#done


#### Using 10K SNP vcf files ##############
#Refdir=/scratch/user/r.kapoor/Sorghum/bam_files/Sorghum_SNP/index/
#SNPdir=/scratch/user/r.kapoor/Sorghum/bam_files/Sorghum_SNP/
#hisat2-build -p 72 --ss splicesites.tsv --exon exons.tsv --snp $SNPdir/hisat2_10kSNP_.snp --haplotype $SNPdir/hisat2_10kSNP_.haplotype keller/Sorghum_bicolor_genome.fa $Refdir

#for sample in $(echo T1_S{1,2,3}); do \
#sample=T1_S2
#echo "Mapping Sample: $sample..."
#fileIn=keller/data/*${sample}
#fileOut=bam_files/hisat2/$sample/${sample}.sam
##hisat2-build -p 72 --ss splicesites.tsv --exon exons.tsv --snp hisat2_extracted_.snp --haplotype hisat2_extracted_.haplotype keller/Sorghum_bicolor_genome.fa $Refdir
#hisat2 -p 72 -x $Refdir -1 ${fileIn}_R1.fastq.gz -2 ${fileIn}_R2.fastq.gz -S $fileOut --rna-strandness RF  --dta --min-intronlen 20 --max-intronlen 50000
#done
