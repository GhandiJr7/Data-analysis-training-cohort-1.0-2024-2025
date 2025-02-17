#   Loading libraries  --------

library(tidyverse)
library(readr)
library(readxl)


# Importing Datasets =======

##  Loading Ornella's data ------

library(readr)
Ornella_UB <- read_csv("RESOURCES FOR DATA ANALYSIS COURSE 2024-25/Ornella UB/DATA COLLECTION FORM .csv", 
                       col_types = cols(`Which modern method?` = col_skip()))
View(Ornella_UB)

##  Loading Gabin's data -------

### Gabin sheet 1 ------
library(readxl)
Gabin_df <- read_excel("Gabin excel sheet.xlsx")
View(Gabin_df)


### Gabin sheet 2 ----
library(readxl)
Gabin_excel_sheet <- read_excel("RESOURCES FOR DATA ANALYSIS COURSE 2024-25/Gabin/Gabin excel sheet.xlsx", 
                                sheet = "Sheet1", col_names = FALSE)
View(Gabin_excel_sheet)


##  Loading Moise's data ------

library(readxl)
MOISE_Excel_Sheet_copy <- read_excel("~/Training data Analysis/Tabulations/MOISE Excel Sheet copy.xlsx")
View(MOISE_Excel_Sheet_copy)


##  Loading Sandra's data ------

### Loading the different sheets first ------

# Sandra's excel file had up to 9 sheets. 
# So we needed to import each of them separately, then merge them back

library(readxl)
San_sht_1 <- read_excel("RESOURCES FOR DATA ANALYSIS COURSE 2024-25/Sandra/Final data Sansan.xlsx", 
                        sheet = "SECTION_1_DATES")
View(San_sht_1)


library(readxl)
San_sht_2 <- read_excel("RESOURCES FOR DATA ANALYSIS COURSE 2024-25/Sandra/Final data Sansan.xlsx", 
                        sheet = "Sheet2")
View(San_sht_2)


library(readxl)
San_sht_3 <- read_excel("RESOURCES FOR DATA ANALYSIS COURSE 2024-25/Sandra/Final data Sansan.xlsx", 
                        sheet = "SECTION_3_COMORBIDITIES")
View(San_sht_3)


### Then merging them -------
?merge()  # Use one question mark to look for help for objects that are loaded into R's memory
??join()  # Use 2 question marks for objects that are not loaded into the memory


San_1_2 = merge(x = San_sht_1, y = San_sht_2) # Merging sheet 1 and 2 of Sandra's dat

San_1_2_3 = merge(San_1_2, San_sht_3) #You don't need to call the argument names
                                      #But you have to respect their order in this case

San_3 = merge(y = San_sht_3, x = San_1_2) # Or, you can specify the arg name in any order



# INITIAL DATA EXPLORATION ======

## With DataExplorer ------
library(DataExplorer)

?DataExplorer

create_report(Gabin_df)

## With summarytools -------
??summarytools

library(summarytools)
?dfSummary

Gabin_smr = dfSummary(Gabin_df)
view(Gabin_smr)


## With dlookr ------
?dlookr

library(dlookr)
diagnose(Gabin_df)
diagnose_report(Gabin_df)
diagnose_web_report(Gabin_df)


# DATA CLEANING ---------
library(tidyverse)

## Change variables types ------ 
Gabin_df$`Year of admission into the hospital` = as_factor(Gabin_df$`Year of admission into the hospital`)

Gabin_df[, 4] = as_factor(Gabin_df[ , 4])

Gabin_df$Sex = as_factor(Gabin_df$Sex)

Gabin_df$Occupation = as_factor(Gabin_df$Occupation)

Gabin_df$Residence = as_factor(Gabin_df$Residence)

Gabin_df[, c(2,4,6:39)] = lapply(Gabin_df[, c(2,4,6:39)], as_factor)

Gabin_df[] = lapply(Gabin_df, function(x) {if(is.character(x)) as.factor(x) else x})


## Recoding variables --------
## Cutting Gabin_df$Age into Gabin_df$Age_range
Gabin_df$Age_range <- cut(Gabin_df$Age,
  include.lowest = TRUE,
  right = FALSE,
  dig.lab = 4,
  breaks = c(0, 30, 45, 60, 75))

## Recoding Gabin_df$Occupation into Gabin_df$Occupation_rec
Gabin_df$Occupation_rec <- Gabin_df$Occupation %>%
  fct_recode(
    "Trader" = "Business",
    "Farmer" = "Famer",
    "Farmer" = "Farmers",
    "Farmer" = "Farming",
    "Student" = "Students"
  )

summary(Gabin_df$Occupation_rec)


## Recoding Gabin_df$Occupation into Gabin_df$Employment
Gabin_df$Employment <- Gabin_df$Occupation %>%
  fct_recode(
    "Civil servant" = "Army",
    "Self-employed" = "Bike mechanic",
    "Self-employed" = "Bike rider",
    "Self-employed" = "Builder",
    "Self-employed" = "Business",
    "Self-employed" = "Carpenter",
    "Civil servant" = "Community health worker",
    "Self-employed" = "Driver",
    "Self-employed" = "Electrician",
    "Self-employed" = "Farmers",
    "Self-employed" = "Farming",
    "Self-employed" = "Footballer",
    "Self-employed" = "Mechanic",
    "Civil servant" = "Military",
    "Self-employed" = "Nurse",
    "Self-employed" = "Painter",
    "Self-employed" = "Pastor",
    "Self-employed" = "Shepherd",
    "Student" = "Students",
    "Civil servant" = "Teacher",
    "Self-employed" = "Trader",
    "Self-employed" = "Famer",
    "Self-employed" = "Farmer"
  )

summary(Gabin_df$Employment)
summary(Gabin_df$Sex)

## Cleaning names of variables --------
attach(Gabin_df)

### With the janitor package
library(janitor)

Gabin_df = clean_names(Gabin_df)

### Demonstrating the use of attaching a dataframe
attach(Gabin_df)
year_of_admission_into_the_hospital

### Renaming long variable names
Gabin_df = rename(Gabin_df, year_adm = year_of_admission_into_the_hospital,
                  prev_bone_surg = previous_bone_surgery, prox_seg = proximal_segment_affected,
                  mid_seg = middle_segment_affected, dist_seg = distal_segment_affected, 
                  ass_lesion = is_there_an_associated_lesion, other_frac = other_bone_fractures,
                  complication = is_there_any_complication, compart_sdrm = compartment_syndrome)

### Selecting useful variables only
Gabin_df2 = select(Gabin_df, 1:3,40,4,5,42,6:39, -c(34,13))


## Inspect again --------
Gabin_smr2 = dfSummary(Gabin_df2)
stview(Gabin_smr2)

# DESCRIPTIVE STATS -----
library(dplyr)
Gabin_df <- Gabin_df %>% mutate(across(where(is.factor), as.character))


