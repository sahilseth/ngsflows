% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bwa.R
\name{bwa}
\alias{bwa}
\alias{bwa.backtrack}
\alias{bwa.mem}
\title{Wrapper for BWA sequence alignment tool}
\source{
http://bio-bwa.sourceforge.net/bwa.shtml
}
\usage{
bwa(method = c("backtrack", "mem", "aln_sam"), ...)

bwa.backtrack(fqs1, fqs2, paired_end,
  samplename = opts_flow$get("samplename"),
  bwa_exe = opts_flow$get("bwa_exe"), ref_bwa = opts_flow$get("ref_bwa"),
  bwa_aln_opts = opts_flow$get("bwa_aln_opts"),
  cpu_bwa_aln = opts_flow$get("cpu_bwa_aln"),
  bwa_sampe_opts = opts_flow$get("bwa_sampe_opts"),
  bwa_samse_opts = opts_flow$get("bwa_samse_opts"),
  samtools_exe = opts_flow$get("samtools_exe"))

bwa.mem(fqs1, fqs2, paired_end = opts_flow$get("paired_end"),
  samplename = opts_flow$get("samplename"),
  bwa_exe = opts_flow$get("bwa_exe"), ref_bwa = opts_flow$get("ref_bwa"),
  bwa_mem_opts = opts_flow$get("bwa_mem_opts"),
  cpu_bwa_mem = opts_flow$get("cpu_bwa_mem"),
  samtools_exe = opts_flow$get("samtools_exe"), execute = FALSE)
}
\arguments{
\item{bwa_mem_opts}{}

\item{fastq1}{character vector with full paths to fastq files for mate 1.}

\item{fastq2}{character vector}
}
\value{
A list, with cmds as one of the variables which
contains system commands to be run.
}
\description{
Quoting from BWA's website:

BWA is a software package for mapping low-divergent sequences against a large reference genome, 
such as the human genome. It consists of three algorithms: BWA-backtrack, BWA-SW and BWA-MEM.
The first algorithm is designed for Illumina sequence reads up to 100bp, while the rest two for 
longer sequences ranged from 70bp to 1Mbp. BWA-MEM and BWA-SW share similar features such as 
long-read support and split alignment, but BWA-MEM, which is the latest, is generally recommended
for high-quality queries as it is faster and more accurate. BWA-MEM also has better performance
than BWA-backtrack for 70-100bp Illumina reads.
For all the algorithms, BWA first needs to construct the FM-index for the reference genome 
(the index command). Alignment algorithms are invoked with different sub-commands: 
aln/samse/sampe for BWA-backtrack, bwasw for BWA-SW and mem for the BWA-MEM algorithm.
}

