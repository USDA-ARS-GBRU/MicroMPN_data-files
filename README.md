# Most probable number(MPN) relative fluorescence units microplate assay data files

The folders in this repository contain the data files used in our analysis for the paper "A method for screening microbe viability in complex soil communities by rapid fluorescent, most probable number estimation in microplates"

Authors: Karla Franco Melendez1, Layla Schuster2, Melinda Chue Donahey2, Emily Kairalla2, M. Andrew Jansen3, Christopher Reisch 2,4, Adam R. Rivers1#

Affiliations:
1 United States Department of Agriculture, Agricultural Research Service, Genomics and Bioinformatics Research Unit, Gainesville, FL 32608, USA
2 Department of Microbiology and Cell Science, Institute of Food and Agricultural Sciences, University of Florida, Gainesville, FL 32603, USA
3 United States Department of Agriculture, Agricultural Research Service, Systematic Entomology Laboratory, Electron and Confocal Microscopy Unit, Beltsville, MD 20013, USA
4 Present address: Genomatica, San Diego, CA 92121 USA

Corresponding authors:
#Adam Rivers: adam.rivers@usda.gov

For R analysis and plotting purposes, thoughout our R scripts and Excel files we reffered to data from soil-only microcosms as "simple". Whereas data obtained from soil and synthetic communities was labeled "complex".

Folder name: plasmid_retention
This folder contains three files. File one "paired t-test_analysis.txt" has the R script for a paired_t_test_analysis used to compare the means between bacterial couns obtained from agar with and without the antibiotic genetamicin. To run the analysis, use file "data_simple_complex.csv".

The second file "data_simple_complex.xlsx" contains two EXCEL tabs.
Tab_1 - Paired_t_test_simple_complex (R output)
Tab_2 - Boxplots

