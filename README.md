# Create new package RnBeads.mm10 (Ensembl v102)

**Description:** Automatically generated RnBeads annotation package for the mouse assembly mm10 using Ensembl annotation v102.

To manually regenerate the RnBeads annotation packge RnBeads.mm10 package with  a newer version of the Ensembl annotation (v102) first download and install in R the file RnBeadsAnnotationCreator_0.99.0.tar.gz from the git repository and run the following commands from your terminal:

```
git clone 'https://github.com/TriLab-bioinf/HENNIG_LAB_TK_29_MM10v102.git'

R CMD INSTALL ./HENNIG_LAB_TK_29_MM10v102/RnBeadsAnnotationCreator_0.99.0.tar.gz
```

Next, run the following command to create the RnBeads.mm10 package with the Ensembl annotation version 102
```
Rscript create_mm10_RnBeads_annotation.R --assembly mm10 --version 102 --path `pwd` 
``` 

The command above should create in the current directory the folder RnBeads.mm10. To finalize the creeation of the new RnBeads.mm10 package and install it in R run the following commands:
```
R CMD build RnBeads.mm10
R CMD INSTALL RnBeads.mm10_1.6.0.tar.gz

```

