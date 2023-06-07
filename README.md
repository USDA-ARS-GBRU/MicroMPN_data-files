# Most probable number(MPN) relative fluorescence units microplate assay data files

The folders in this repository contain the data files used in our analysis for the paper *"A method for screening microbe viability in complex soil communities by rapid fluorescent, most probable number estimation in microplates"*.

Authors: Karla Franco Meléndez<sup>1</sup>, Layla Schuster<sup>2</sup>, Melinda Chue Donahey<sup>2</sup>, Emily Kairalla<sup>2</sup>, M. Andrew Jansen<sup>3</sup>, Christopher Reisch<sup>2,4</sup>, Adam R. Rivers<sup>1#</sup>

Affiliations:
<sup>1</sup> United States Department of Agriculture, Agricultural Research Service, Genomics and Bioinformatics Research Unit, Gainesville, FL 32608, USA; <sup>2</sup> Department of Microbiology and Cell Science, Institute of Food and Agricultural Sciences, University of Florida, Gainesville, FL 32603, USA; <sup>3</sup> United States Department of Agriculture, Agricultural Research Service, Systematic Entomology Laboratory, Electron and Confocal Microscopy Unit, Beltsville, MD 20013, USA; <sup>4</sup>Present address: Genomatica, San Diego, CA 92121 USA

Corresponding author:
#Adam Rivers: adam.rivers@usda.gov

## Data Folders

*The data files in this repo contain the raw MPN and CFU counts and their normalized values by grams of soil (MPN/g and CFU/g). All statistical analyses were performed in R v4.3.0 (R Core Team, 2023). Raw and normalized data counts, R outputs, and plots were compiled into an Excel spreadsheet.*

MPN values were calculated with the Python package ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn).



**1. Folder**: plasmid_retention

- This folder contains the CFU/g data corresponding to experiments assessing vector retention in *R. solanacearum* in soil lacking antibiotic selection. In the Excel files, we referred to data from soil-only microcosms as **"simple"**. Whereas data obtained from soil and synthetic communities was labeled **"complex".**

   - 1.1. *Subfolder*: R_analysis
     
     - This folder contains two files, an R script and an input file. The R script computes a paired_t_test. 

     - R_script - "paired_t_test_analysis.txt"

     - R_input_file - "data_simple_complex.csv"

   - 1.2. *Subfolder*: Excel_spreadsheets
      
      - This folder contains three Excel files.

      - CFU_data - "CFU_simple.xlsx" and "CFU_complex.xlsx" (raw CFU data)

      - plots - "data_simple_complex.xlsx"

**2. Folder**: MicroMPN_soil_only_microcosm

- This folder contains the MPN/g and CFU/g data corresponding to soil-only microcosms experiments. 

   - 2.1. *Subfolder*: micrompn
   
      - This folder contains the input and output files used with ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn). The output of MicroMPN includes MPN, MPN adjusted, Jarvis 95%       CI, and a rarity index.
      
      - micrompn_input - "limit_detection_T48_Bio_1.csv"
        
      - micrompn_output - "OUTFILE_raw_trim_limit_detection_T48_bio_1.csv"

   - 2.2. *Subfolder*: R_analysis
     
      - This folder contains two files, an R script and an input file. The R script computes a Pearson correlation, a linear regression, a Bland Altman analysis, and Fisher's F-test          using MPN/g and CFU/g data. The input file contains both MPN and MPN adjusted data. Users can run the analysis with MPN adjusted values by simply subsetting for the correct columns in the input file.

     -  Statistical analysis was performed in R v4.3.0 (R Core Team, 2023). Both MPN and MPN adjusted values were analyzed. However, the scientific paper only discusses and displays results       for MPN values. The conclusions of the paper were not affected by MPN adjusted values. 
     
      - R_script - "backup_R_corr_regre_BA_ftest_bio1_mpn.txt"
         
      - R_input_file - "limit_detection_bio1.csv"
         
  - 2.3. *Subfolder*: Excel_spreadsheet
      
     - This folder contains a single Excel file with the raw data sets, MicroMPN output, CFU/g data, and all of the plots published in the paper. 
      
      
**3. Folder**: MicroMPN_soil_and_synthetic_communities
  
- This folder contains the MPN and CFU count data from soil experiments conducted with synthetic communities. A total of six communities (C1 – C6), each composed of 10 strains, were evaluated for their biocontrol activity against *R. solanacearum* in soil microcosms.

   - 3.1. *Subfolder*: micrompn
   
      - This folder contains the input and output files used with ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn). The output of MicroMPN includes MPN, MPN adjusted, Jarvis 95%       CI, and a rarity index. 
    
      - micrompn_input - "Copy_C1_C2_C3_T48.csv" and "Copy_C4_C5_C6_T48.csv"
        
      - micrompn_output - "OUTFILE_trim_Copy_C1_C2_C3.csv" and "OUTFILE_trim_Copy_C1_C2_C3.csv"

   - 3.2. *Subfolder*: R_analysis
     
      - This folder contains two files, an R script and an input file. The R script computes a Pearson correlation, a linear regression, a Bland Altman analysis, and Fisher's F-test          using MPN/g and CFU/g data. The input file contains both MPN and MPN adjusted data. Users can run the analysis with MPN adjusted values by simply subsetting for the correct columns in the input file.

      -  Statistical analysis was performed in R v4.3.0 (R Core Team, 2023). Both MPN and MPN adjusted values were analyzed. However, the scientific paper only discusses and displays results       for MPN values. The conclusions of the paper were not affected by MPN adjusted values. 
     
      - R_script - "backup_dataMPN_micrompn_trim_norarity_community_R.txt"
         
      - R_input_file - "data_micrompn_trim_norarity_community_R.csv"
         
  - 3.3. *Subfolder*: Excel_spreadsheet
      
     - This folder contains a single Excel file with the MicroMPN output, CFU/g data, and all of the plots published in the paper.
   
   - 3.4. *Subfolder*: Raw_data

      - This contains the raw data sets for MPN and CFU data per community experiment.
      

**4. Folder**: multiple_comparisons

- To assess if a community’s suppressive activity was independent of the method (MPN-RFU microplate assay vs spotting on agar) being used, we compared the mean of every community to the mean of the control (rfp-Rs5). 

   - 4.1. *Subfolder*: R_analysis
     
      - This folder contains two files, an R script and an R input file. Differences between group means for the MPN-RFU microplate assay were compared by a one-way ANOVA, followed by the post-hoc test for multiple comparisons Tukey’s Honest Significant Differences. However, for spotting on agar, since the assumption of normality was violated, we ran the non-parametric test Kruskal-Wallis, followed by the Dunn’s test for multiple comparisons. The input file contains both MPN and MPN adjusted data. Users can run the analysis with MPN adjusted values by simply subsetting for the correct columns in the input file.

      - R_script - "backup_oneway_dataMPN_micrompn_trim_norarity_community_R.txt"
         
      - R_input_file - "data_micrompn_trim_norarity_community_R.csv" (the same file used in section 3.2)
         
    - 4.2. *Subfolder*: Excel_spreadsheet
      
       - This folder contains a single file with all the plots corresponding to multiple comparison analysis. Both MPN and MPN adjusted data were analyzed in R and were plotted in Excel.

  
5. **Folder**: SpectraMax_output_to_column_format
      
     - This folder contains a python script which converts RFU microplate data (output of SpectraMax M3) to a column format compatible with ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn).
           
     - input_file_example - "limit_detection_T48_bio_1"   
             
     - python_script - "three_col_updated.py"

        - The python code returns RFU data in column format.
           
     - output_file_example - "limit_detection_T48_bio_1.csv"
      
     ### Input Example
       ![image](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/c524acf3-3de1-4062-9b84-31a12625d72c)

       <figure>
        <figcaption>Example of SpectraMax M3 RFU table format of a 96-well microplate.</figcaption>
      </figure> 
      
    
      
     ### Output Example
      ![image](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/40d3c4f7-ade2-4844-9f42-d68c4df3e1d9)
       
      <figure>
       <figcaption>Output of data re-arranged into 4 columns.</figcaption>
     </figure>    
      

