#BSUB -J AdapterRemovalv2 # sets the job name to Testing_R_Script.
#BSUB -L /bin/bash # uses the bash login shell to initialize the job's execution environment.
#BSUB -P 082825959398 # 082825952567
#BSUB -W 0:30 # sets to 5 hours the job's runtime wall-clock limit.
#BSUB -n 1 # assigns 1 core for execution.
#BSUB -R "span[ptile=1]" # assigns 1 core per node.
#BSUB -R "rusage[mem=500]" # reserves ~5GB per process/CPU for the job
#BSUB -M 500 # sets to ~5GB the per process enforceable memory limit.
#BSUB -o ./shell_output/stdout.AdapterRemovalv2_consensus.%J # directs the job's standard output to stdout.jobid
#BSUB -u r.kapoor@tamu.edu
#BSUB -e -N
#BSUB -e ./shell_output/stderr.AdapterRemovalv2_consensus.%J

module purge
module load bzip2/1.0.6-GCCcore-8.2.0
module load zlib/1.2.11-GCCcore-8.2.0
#/home/r.kapoor/sl/Research/rnaseq_tutorial/student_tools/adapterremoval-2.3.0/build/AdapterRemoval --file1 SRR1829997_1.fastq.gz --file2 SRR1829997_2.fastq.gz --adapter-list Sorghum_adapters.txt --mate-separator '.'  --threads 10 --basename AdRemovalv2/SRR1829997/SRR1829997 --gzip
#/home/r.kapoor/sl/Research/rnaseq_tutorial/student_tools/adapterremoval-2.3.0/build/AdapterRemoval --file1 SRR1832808_1.fastq.gz --file2 SRR1832808_2.fastq.gz --adapter-list Sorghum_adapters.txt --mate-separator '.'  --threads 1 --basename AdRemovalv2/SRR1832808/SRR1832808 --gzip
#/home/r.kapoor/sl/Research/rnaseq_tutorial/student_tools/adapterremoval-2.3.0/build/AdapterRemoval --file1 SRR1832809_1.fastq.gz --file2 SRR1832809_2.fastq.gz --adapter-list Sorghum_adapters.txt --mate-separator '.'  --threads 10 --basename AdRemovalv2/SRR1832809/SRR1832809 --gzip
#/home/r.kapoor/sl/Research/rnaseq_tutorial/student_tools/adapterremoval-2.3.0/build/AdapterRemoval --file1 SRR1832811_1.fastq.gz --file2 SRR1832811_2.fastq.gz --adapter-list Sorghum_adapters.txt --mate-separator '.'  --threads 20 --basename AdRemovalv2/SRR1832811/SRR1832811 --gzip

#Consensus adapters
#/home/r.kapoor/sl/Research/rnaseq_tutorial/student_tools/adapterremoval-2.3.0/build/AdapterRemoval --file1 SRR1829997_1.fastq.gz --file2 SRR1829997_2.fastq.gz --adapter-list adapters/ARemv2_pred/adapters_SRR1829997.txt --mate-separator '.'  --threads 10 --basename AdRemovalv2/Consensus/SRR1829997/SRR1829997 --gzip
#/home/r.kapoor/sl/Research/rnaseq_tutorial/student_tools/adapterremoval-2.3.0/build/AdapterRemoval --file1 SRR1832808_1.fastq.gz --file2 SRR1832808_2.fastq.gz --adapter-list adapters/ARemv2_pred/adapters_SRR1832808.txt --mate-separator '.'  --threads 10 --basename AdRemovalv2/Consensus/SRR1832808/SRR1832808 --gzip
#/home/r.kapoor/sl/Research/rnaseq_tutorial/student_tools/adapterremoval-2.3.0/build/AdapterRemoval --file1 SRR1832809_1.fastq.gz --file2 SRR1832809_2.fastq.gz --adapter-list adapters/ARemv2_pred/adapters_SRR1832809.txt --mate-separator '.'  --threads 10 --basename AdRemovalv2/Consensus/SRR1832809/SRR1832809 --gzip
/home/r.kapoor/sl/Research/rnaseq_tutorial/student_tools/adapterremoval-2.3.0/build/AdapterRemoval --file1 SRR1832811_1.fastq.gz --file2 SRR1832811_2.fastq.gz --adapter-list adapters/ARemv2_pred/adapters_SRR1832811.txt --mate-separator '.'  --threads 10 --basename AdRemovalv2/Consensus/SRR1832811/SRR1832811 --gzip
