\name{RcisTarget.hg19.motifDBs.cisbpOnly.500bp}
\docType{data}
\alias{RcisTarget.hg19.motifDBs.cisbpOnly.500bp}
\alias{hg19_500bpUpstream_motifRanking_cispbOnly}
\alias{hg19_direct_motifAnnotation_cisbpOnly}
\alias{hg19_inferred_motifAnnotation_cisbpOnly}
\title{RcisTarget gene-based motif rankings and their annotation to
transcription factors for Human (hg19).}

\author{
Sara Aibar, Gert Hulselmans, Stein Aerts.
Laboratory of Computational Biology, KU Leuven Center for Human Genetics.
Leuven, Belgium.

Maintainer: Sara Aibar <sara.aibar@kuleuven.be>
}
\description{
RcisTarget databases: Gene-based motif rankings and annotation to
transcription factors.
Due to size restrictions,
this specific package contains a \emph{subset} of 4.6k motifs (cisbp motifs),
scored only within 500bp upstream and the TSS, and only rankings under 5000*
are kept.

The full database,
containing 20k motifs and search space up to 10kbp around the TSS,
is available for download at http://scenic.aertslab.org.

* The limit to 5000 ranks implies that this is the maximum value to use as
\code{aucMaxRank}  in \code{calcAUC}, and as \code{maxRank} in
\code{addSignificantGenes} or \code{getSignificantGenes}.
}
\source{
This is a subset of the databases (20k motif collection) used in iRegulon
(\url{http://iregulon.aertslab.org/collections.html#motifcolldesc}).
}
\references{
\emph{Janky R, Verfaillie A, Imrichova H, Van de Sande B, Standaert L,
Christiaens V, Hulselmans G, Herten K, Naval Sanchez M, Potier D, Svetlichnyy D,
Kalender Atak Z, Fiers M, Marine JM, and Aerts S}.
\bold{iRegulon: From a Gene List to a Gene Regulatory Network Using Large
Motif and Track Collections}. PLoS Comput Biol. 2014 Jul 24;10(7):e1003731.
}

\format{
\bold{Motif rankings}: Matrix of genes (rows) by motifs (columns).
The value in the matrix contains the ranking of the gene for each motif
(i.e. a ranking of genes per motif).
The rankings are based on the scores of the motifs near the
transcription start site (TSS) of the gene:
\itemize{
 \item{\bold{hg19_500bpUpstream_motifRanking_cispbOnly: }}{
 Motifs scored within the \bold{500 bp upstream}
 of the TSS and the TSS of the gene.}
}

\bold{Motif annotations}: List of matrices containing the annotation of the
motif to transcription factors.
\itemize{
  \item{\bold{hg19_direct_motifAnnotation: }}{TFs directly annotated to the
  motif (e.g. by the source database).}
 \item{\bold{hg19_inferred_motifAnnotation: }}{Expanded annotation,
 including the TF-motif associations inferred based on motif similarity
 (does NOT include the direct annotation).}
}

See \emph{iRegulon} paper and documentation for \bold{details} on how the
rankings and annotations were built.
}
\seealso{
This dataset is meant to be used with package
\code{RcisTarget} (\url{http://bioconductor.org/packages/RcisTarget}).
}

\keyword{datasets}
