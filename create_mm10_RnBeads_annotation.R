#!/usr/local/bin/R
args <- R.utils::commandArgs(asValues=TRUE, excludeReserved=TRUE)[-1]

#str(args)

# Description:
# This script generates a new RnBeads.mm10 annotation package with Ensembl annotation version v102 **without** SNP data

my_help = paste0("\n--assembly <chr> [where chr=assembly prefix of interest def=mm10]\n",
            "--version <int> [where int=version number of the annotation, def=102]\n",
            "--path <path> [where path=full path to working directory def=current_dir]\n\n")

if (length(args)==0) {
  my_asmbl = 'mm10'
  my_ver =   102
  my_path = getwd()
} else if(args['help'] == TRUE){
  cat(my_help)
  stop(call. = FALSE)
} else {
  my_asmbl = args['assembly']
  my_ver =   args['version']
  my_path =   args['path']
}

# Load required libraries:
cat('Loading libraries')
library(BSgenome.Mmusculus.UCSC.mm10)
library(RnBeadsAnnotationCreator)


# Create annotation package
createAnnotationPackage(as.character(my_asmbl), 
                        dest =as.character(my_path), 
                        version = as.numeric(my_ver), 
                        cleanUp = FALSE
                        )
