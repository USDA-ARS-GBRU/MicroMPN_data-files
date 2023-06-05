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


1) Folder name: plasmid_retention

    This folder contains three files. 
    
    R_script - 'paired_t_test_analysis.txt' 
    
    R_input_file - 'data_simple_complex.csv'
    
    Excel_spreadsheet - "data_simple_complex.xlsx" 
    
      Contains two tabs:
      
        Tab_1 - Paired_t_test_simple_complex (R output)
        
        Tab_2 - Boxplots (figures)

2) Folder name: MicroMPN_soil_only_microcosm

    For the purposes of organization, this main folder has three subfolders.

    Subfolder: micrompn
    
    This folder contains the input and output files used with MicroMPN (https://github.com/USDA-ARS-GBRU/micrompn.git). The output of MicroMPN includes MPN, MPN adjusted, Jarvis 95%       CI, and a rarity index. The R analysis was preformed with both MPN and MPN adjusted values. Scientific paper only discusses and displays results for MPN values. The conclusions of     the paper were the same for both MPN and MPN adjusted values. 
    
        micrompn_input - "limit_detection_T48_Bio_1.csv"
        
        micrompn_output - "OUTFILE_raw_trim_limit_detection_T48_bio_1.csv"

     Subfolder: R_analysis
     
     This folder contains two files.The R script computes a Pearson correlation, a linear regression, a Bland Altman analysis, and Fisher's F-test.
     
         R_script - 'backup_R_corr_regre_BA_ftest_bio1_mpn"
         
         R_input_file - 'limitdetection_bio1'
         
      Subfolder: Excel_spreadsheet
      
      This folder contains a single file with all of the plots. 
      
      Subfolder: RFU_plate_data_transposed
      
      This folder contains a python scrript which converts RFU microplate data to column data. Instead of manually transposing plate data into coluns, users can take advantage of this       script.
      
      ![image](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/674d12b1-3923-4c3f-bcb9-56cd86b36d55)

      
      
      
      Users will 

