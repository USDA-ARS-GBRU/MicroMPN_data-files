# Most probable number(MPN) relative fluorescence units microplate assay data files

The folders in this repository contain the data files used in our analysis for the paper "A method for screening microbe viability in complex soil communities by rapid fluorescent, most probable number estimation in microplates".

Authors: Karla Franco Melendez1, Layla Schuster2, Melinda Chue Donahey2, Emily Kairalla2, M. Andrew Jansen3, Christopher Reisch 2,4, Adam R. Rivers1#

Affiliations:
1 United States Department of Agriculture, Agricultural Research Service, Genomics and Bioinformatics Research Unit, Gainesville, FL 32608, USA
2 Department of Microbiology and Cell Science, Institute of Food and Agricultural Sciences, University of Florida, Gainesville, FL 32603, USA
3 United States Department of Agriculture, Agricultural Research Service, Systematic Entomology Laboratory, Electron and Confocal Microscopy Unit, Beltsville, MD 20013, USA
4 Present address: Genomatica, San Diego, CA 92121 USA

Corresponding author:
#Adam Rivers: adam.rivers@usda.gov

For R analysis and plotting purposes, thoughout our R scripts and Excel files we reffered to data from soil-only microcosms as "simple". Whereas data obtained from soil and synthetic communities was labeled "complex".


1) Folder: plasmid_retention

   This folder contains three files. 
    
    R_script - 'paired_t_test_analysis.txt' 
    
    R_input_file - 'data_simple_complex.csv'
    
    Excel_spreadsheet - "data_simple_complex.xlsx" (The spreadsheet contains the R output and boxplots.)
      

2) Folder: MicroMPN_soil_only_microcosm

The data in this folder correspond to soil-only microcosm analysis and plots. This main folder has three subfolders.

   2.1) Subfolder: micrompn
    
    This folder contains the input and output files used with MicroMPN (https://github.com/USDA-ARS-GBRU/micrompn.git). The output of MicroMPN includes MPN, MPN adjusted, Jarvis 95%       CI, and a rarity index. Analysis of data was performed in R and both MPN and MPN adjusted values were analyzed. However, the scientific paper only discusses and displays results       for MPN values. Regardless, the conclusions of the paper remained the same. 
    
        micrompn_input - "limit_detection_T48_Bio_1.csv"
        
        micrompn_output - "OUTFILE_raw_trim_limit_detection_T48_bio_1.csv"

   2.2) Subfolder: R_analysis
     
     This folder contains two files, an R script and an input file. The R script computes a Pearson correlation, a linear regression, a Bland Altman analysis, and Fisher's F-test          using CFU and MPN data. 
     
         R_script - 'backup_R_corr_regre_BA_ftest_bio1_mpn.txt'
         
         R_input_file - 'limitdetection_bio1.csv'
         
   2.3) Subfolder: Excel_spreadsheet
      
      This folder contains a single file with all of the plots for soil-only microcosms. Both MPN and MPN adjusted data were analyzed in R.
      
   2.4) Subfolder: SpectraMax_output_to_column_format
      
      This folder contains a python script which converts RFU microplate data (output of SpectraMax M3) to a column format. Users can then import the output file into MicroMPN               for MPN calculations.
      
        python_script - 'three_col_updated.py'
        
        input_file_example - 'limit_detection_T48_bio_1'
        
        output_file_example - 'limit_detection_T48_bio_1.csv'
        
      
      ![image](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/c524acf3-3de1-4062-9b84-31a12625d72c)

      Example of SpectraMax M3 RFU table format of a microplate.
      

      The python code returns RFU data in column format:
      
      ![image](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/40d3c4f7-ade2-4844-9f42-d68c4df3e1d9)
      
      
      

      
      

