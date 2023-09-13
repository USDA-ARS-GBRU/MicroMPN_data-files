# Data files

The folders in this repository contain the data files used in our analysis for the paper *"MicroMPN: methods and software for high-throughput screening of microbe suppression in mixed populations"*.

Authors: Karla Franco Meléndez<sup>1</sup>, Layla Schuster<sup>2</sup>, Melinda Chue Donahey<sup>2</sup>, Emily Kairalla<sup>2</sup>, M. Andrew Jansen<sup>3</sup>, Christopher Reisch<sup>2,4</sup>, Adam R. Rivers<sup>1#</sup>

Affiliations:
<sup>1</sup> United States Department of Agriculture, Agricultural Research Service, Genomics and Bioinformatics Research Unit, Gainesville, FL 32608, USA; <sup>2</sup> Department of Microbiology and Cell Science, Institute of Food and Agricultural Sciences, University of Florida, Gainesville, FL 32603, USA; <sup>3</sup> United States Department of Agriculture, Agricultural Research Service, Systematic Entomology Laboratory, Electron and Confocal Microscopy Unit, Beltsville, MD 20013, USA; <sup>4</sup>Present address: Genomatica, San Diego, CA 92121 USA

Corresponding author:
#Adam Rivers: adam.rivers@usda.gov

## Data Folders

*The data files in this repo contain the raw MPN and CFU counts and their normalized values by grams of soil (MPN/g and CFU/g). All statistical analyses were performed in R v4.3.0 (R Core Team, 2023). Raw and normalized data counts, R outputs, and plots were compiled into Excel spreadsheets.*

MPN values were calculated with the Python package ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn).



**1. Folder**: plasmid_retention

- This folder contains the CFU/g data corresponding to experiments assessing vector retention in *R. solanacearum* in soil lacking antibiotic selection. In the Excel files, we referred to data from soil-only microcosms as **"simple"**. Whereas data obtained from soil and synthetic communities were labeled **"complex".**

   - 1.1. *Subfolder*: R_analysis
     
     - This folder contains two files, an R script, and an input file. The R script computes a paired_t_test. 

   - 1.2. *Subfolder*: Excel_spreadsheets
      
      - This folder contains three Excel files. Raw CFU data sets: "CFU_simple.xlsx" and "CFU_complex.xlsx". The plots published in the paper are found in "data_simple_complex.xlsx".


**2. Folder**: MicroMPN_soil_only_microcosm

- This folder contains the MPN/g and CFU/g data corresponding to soil-only microcosms experiments. 

   - 2.1. *Subfolder*: micrompn
   
      - This folder contains the input ("soil_only_input.csv") and output ("OUTFILE_trim_soil_only.csv") files used with ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn) to calculate MPN values. The output of MicroMPN includes MPN, MPN-adjusted, Jarvis 95%       CI, and a rarity index.

   - 2.2. *Subfolder*: R_analysis
     
      - This folder contains two files, an R script ("backup_R_corr_regre_BA_ftest_mpn_soil_only.txt") and an input ("soil_only_microcosms.csv") file. The R script computes a Pearson correlation, a linear regression, a Bland-Altman analysis, and Fisher's F-test using MPN/g and CFU/g data. The input file contains both MPN and MPN-adjusted data. Users can run the analysis with MPN-adjusted values by simply subsetting for the correct columns in the input file.

     -  Statistical analysis was performed in R v4.3.0 (R Core Team, 2023). Both MPN and MPN-adjusted values were analyzed. However, the scientific paper only discusses and displays results for MPN values. The conclusions of the paper were not affected by MPN-adjusted values. 
     
  - 2.3. *Subfolder*: Excel_spreadsheet
      
     - This folder contains a single Excel file ("git_micrompn_trim_norarity_soil_only.xlsx") with the raw data sets, MicroMPN output, CFU/g data, and all of the plots published in the paper. 


**3. Folder**: MicroMPN_soil_and_synthetic_communities
  
- This folder contains the MPN and CFU count data from soil experiments conducted with synthetic communities. A total of six communities (C1 – C6), each composed of 10 strains, were evaluated for their biocontrol activity against *R. solanacearum* in soil microcosms.

   - 3.1. *Subfolder*: micrompn
   
      - This folder contains the input ("Copy_C1_C2_C3_T48.csv" and "Copy_C4_C5_C6_T48.csv") and output ("OUTFILE_trim_Copy_C1_C2_C3.csv" and "OUTFILE_trim_Copy_C1_C2_C3.csv") files used with ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn). The output of MicroMPN includes MPN, MPN-adjusted, Jarvis 95%       CI, and a rarity index. 

   - 3.2. *Subfolder*: R_analysis
     
      - This folder contains two files, an R script ("backup_dataMPN_micrompn_trim_norarity_community_R.txt") and an input ("data_micrompn_trim_norarity_community_R.csv") file. The R script computes a Pearson correlation, a linear regression, a Bland-Altman analysis, and Fisher's F-test using MPN/g and CFU/g data. The input file contains both MPN and MPN-adjusted data. Users can run the analysis with MPN-adjusted values by simply subsetting for the correct columns in the input file.

      -  Statistical analysis was performed in R v4.3.0 (R Core Team, 2023). Both MPN and MPN-adjusted values were analyzed. However, the scientific paper only discusses and displays results for MPN values. The conclusions of the paper were not affected by MPN-adjusted values. 
         
  - 3.3. *Subfolder*: Excel_spreadsheet
      
     - This folder contains a single Excel file ("data_microMPN_TRIM_Improbable.xlsx") with the MicroMPN output, CFU/g data, and all of the plots published in the paper.
   
   - 3.4. *Subfolder*: Raw_data

      - This contains two Excel files ("Copy_C1-C3 MPN 48 H MPN fixed.xlsx" and "Copy_C4-C6 MPN 48 H MPN fixed.xlsx") with the raw data sets for MPN and CFU data.
     
     
**4. Folder**: multiple_comparisons

- To assess if a community’s suppressive activity was independent of the method (MPN-RFU microplate assay vs spotting on agar) being used, we compared the mean of every community to the mean of the control (rfp-Rs5). 

   - 4.1. *Subfolder*: R_analysis
     
      - This folder contains two files, an R script ("backup_oneway_dataMPN_micrompn_trim_norarity_community_R.txt") and an input ("data_micrompn_trim_norarity_community_R.csv") file. Differences between group means for the MPN-RFU microplate assay were compared by a one-way ANOVA, followed by the post-hoc test for multiple comparisons Tukey’s Honest Significant Differences. However, for spotting on agar, since the assumption of normality was violated, we ran the non-parametric test Kruskal-Wallis, followed by Dunn’s test for multiple comparisons. The input file contains both MPN and MPN-adjusted data. Users can run the analysis with MPN-adjusted values by simply subsetting for the correct columns in the input file.
         
    - 4.2. *Subfolder*: Excel_spreadsheet
      
       - This folder contains a single file ("multiple_comparisons.xlsx") with all the plots corresponding to multiple comparison analysis. Both MPN and MPN-adjusted data were analyzed in R and were plotted in Excel.

  
**5. Folder**: SpectraMax_output_to_column_format
      
- This folder contains a Python script ("four_col_updated.py") that converts RFU microplate data (specifically the output of SpectraMax M3) to a column format compatible with ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn). An example input ("soil_only.txt") and output ("soil_only.csv") files are provided.
      
     ### Input Example
    
     
     ![image](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/b361767a-4533-4208-8e0c-03226658e5e6)

     <figure>
      <figcaption>Example of SpectraMax M3 RFU table format of a 96-well microplate.</figcaption>
    </figure> 
      
    
      
     ### Output Example
        
     ![image](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/0a7c356b-c2cb-4117-bb45-08d64e78898f)
     
     <figure>
      <figcaption>The input data was re-arranged into 4 columns.</figcaption>
    </figure>  
     
     
 **6. Folder**: microplate_layout
      
 - This folder contains a TOML file ("microplate.toml") specifying a 96-well microplate layout. In our experimental setup, our plate rows (A – H) were assigned a replicate value (1 – 8), while our columns (1 – 12) represented a particular dilution factor (1e00 – 1e-11). For this reason, each plate was divided into a single 12x8 sample block. This TOML file is needed to run ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn) with any of the micrompn input files provided in this repo. 

      ### TOML Microplate layout example: 

![wellmap dilution](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/1847f052-a7f6-44dc-b5ad-f35122726791)
![wellmap replicate](https://github.com/USDA-ARS-GBRU/MPN-RFU-microplate-assay-data-files/assets/68250738/574367de-1801-430d-aa82-fa46aa08e337)


```

#To visualize the TOML file, users will need to first install ["wellmap"](https://wellmap.readthedocs.io/en/latest/index.html). 

wellmap.show("microplate.toml")

```

To replicate our MPN estimates using the Python package ["MicroMPN"](https://github.com/USDA-ARS-GBRU/micrompn), the input files (see micrompn folders), and the TOML file provided here, simply run the following command:

```

! micrompn --wellmap microplate.toml --data "C:\location\of\CSV\file\input_name.csv" --cutoff 6 
--outfile "C:\location\of\CSV\output\file\OUTFILE_name.csv" 
--plate_name "plate_unique" 
--value_name "rfu"
 --well_name "plate_well" 
--trim_positives

```

 - For more information on how to install MicroMPN visit (https://github.com/USDA-ARS-GBRU/micrompn).
 
 - An example on how to run MicroMPN from a Jupyter Notebook is available through protocols.io under the name "MicroMPN: Software for Automating Most Probable Number Estimates from Laboratory Microplates".

