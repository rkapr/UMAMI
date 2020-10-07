#!/bin/bash
##ENVIRONMENT SETTINGS; CHANGE WITH CAUTION
#SBATCH --export=NONE                #Do not propagate environment
#SBATCH --get-user-env=L             #Replicate login environment

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=featureCounts      #Set the job name to "JobExample2"
#SBATCH --time=2:00:00               #Set the wall clock limit to 6hr and 30min
#SBATCH --ntasks=8         #72 for hisat-build           #Request 1 node
#SBATCH --ntasks-per-node=8     #18 for hisat-build     #Request 8 tasks/cores per node
#SBATCH --mem=60G                   #60G for hisat-build  #Request 8GB per node 
#SBATCH --output=featureCounts/featureCounts_T2T9.%j      #Send stdout/err to "Example2Out.[jobID]" 

##OPTIONAL JOB SPECIFICATIONS
#SBATCH --account=122825950093             #Set billing account to 123456
#SBATCH --partition=knl
#SBATCH --mail-type=ALL              #Send email on all job events
#SBATCH --mail-user=r.kapoor@tamu.edu    #Send all emails to email_address

module load Subread/1.6.3-Linux-x86_64

for file_name in hisat2/T{2..9}_S*/*.bam;do \
echo $file_name; \
#samtools sort $file_name --output-fmt BAM -o ${file_name%%.*}.bam -T $SCRATCH -@ 20 -m 3500M; rm $file_name; done
featureCounts -T 8 -t exon -g gene_id -a ../keller/Sorghum_bicolor.gtf -G ../keller/Sorghum_bicolor_genome.fa -o featureCounts/$(basename ${file_name%%.*}.txt) $file_name -p -s 2 ; \
done 
