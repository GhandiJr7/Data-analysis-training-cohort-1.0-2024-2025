#########    LOADING THE DATA    ---------------
library(readxl)

Gabin_df <- read_excel("~/Training data Analysis/Tabulations/Gabin excel sheet.xlsx")
View(Gabin_df)

#########     EXAMINING THE DATA    --------------
library(summarytools)

#### First glance
first_glance = dfSummary(Gabin_df)
stview(first_glance)


#########     RECODING AND CLEANING      -------------
library(tidyverse)

## As factors
Gabin_df[, c(2,4,6:39)] = lapply(Gabin_df[, c(2,4,6:39)], as_factor)


## Cutting Gabin_df$Age into Gabin_df$Age_rec
Gabin_df$Age_rec <- cut(Gabin_df$Age,
  include.lowest = TRUE,
  right = FALSE,
  dig.lab = 4,
  breaks = c(0, 15, 30, 45, 60, 75)
)


## Reordering Gabin_df$Sex
Gabin_df$Sex <- Gabin_df$Sex %>%
  fct_relevel("Female", "Male")


## Recoding Gabin_df$Occupation into Gabin_df$Occupation_rec
Gabin_df$Occupation_rec <- Gabin_df$Occupation %>%
  fct_recode(
    "Civil servant" = "Army",
    "Self employed" = "Bike mechanic",
    "Self employed" = "Bike rider",
    "Self employed" = "Builder",
    "Self employed" = "Business",
    "Self employed" = "Carpenter",
    "Civil servant" = "Community health worker",
    "Self employed" = "Driver",
    "Self employed" = "Electrician",
    "Self employed" = "Famer",
    "Self employed" = "Farmer",
    "Self employed" = "Farmers",
    "Self employed" = "Farming",
    "Self employed" = "Footballer",
    "Self employed" = "Mechanic",
    "Civil servant" = "Military",
    "Civil servant" = "Nurse",
    "Self employed" = "Painter",
    "Self employed" = "Pastor",
    "Self employed" = "Shepherd",
    "Student" = "Students",
    "Civil servant" = "Teacher",
    "Self employed" = "Trader"
  )


## Reordering Gabin_df$Alcoholism
Gabin_df$Alcoholism <- Gabin_df$Alcoholism %>%
  fct_relevel("No", "Yes")


## Reordering Gabin_df$`Fracture type`
Gabin_df$`Fracture type` <- Gabin_df$`Fracture type` %>%
  fct_relevel("Simple", "Comminuted")


## Reordering Gabin_df$`Fracture pattern (AO)`
Gabin_df$`Fracture pattern (AO)` <- Gabin_df$`Fracture pattern (AO)` %>%
  fct_relevel("Oblique", "Complex", "Transverse", "Spiral", "Wedge")


## Reordering Gabin_df$`Proximal segment affected`
Gabin_df$`Proximal segment affected` <- Gabin_df$`Proximal segment affected` %>%
  fct_relevel("No", "Yes")


## Reordering Gabin_df$`Is there an associated lesion`
Gabin_df$`Is there an associated lesion` <- Gabin_df$`Is there an associated lesion` %>%
  fct_relevel("No", "Yes")


## Reordering Gabin_df$`Other bone fractures`
Gabin_df$`Other bone fractures` <- Gabin_df$`Other bone fractures` %>%
  fct_relevel("No", "Yes")


## Recoding Gabin_df$`Treatment modality` into Gabin_df$`Treatment modality_rec`
Gabin_df$`Treatment modality_rec` <- Gabin_df$`Treatment modality` %>%
  fct_recode(
    "Others" = "Amputation",
    "Others" = "Plates and screws, External fixation",
    "Others" = "Intramedullary nailing, Plates and screws"
  )

## Reordering Gabin_df$`Treatment modality_rec`
Gabin_df$`Treatment modality_rec` <- Gabin_df$`Treatment modality_rec` %>%
  fct_relevel("External fixation", "Intramedullary nailing", "Casting", "Plates and screws",
              "Others")



## Reordering Gabin_df$`Is there any complication`
Gabin_df$`Is there any complication` <- Gabin_df$`Is there any complication` %>%
  fct_relevel("No", "Yes")






####   Another glance   ------
second_glance = dfSummary(Gabin_df)
summarytools::stview(second_glance)




########    DESCRIPTIVE STATS    ----------
library(gtsummary)


####  Socio-demographic  ------

tab1_SD = Gabin_df %>% 
  select(Age, Age_rec, Sex, Occupation_rec, Residence, `Marital status`) %>% 
  tbl_summary(statistic = all_continuous() ~ "{mean} ({sd}); {median}({p25}, {p75})",
              digits = list(all_categorical() ~ c(0, 1),
                            all_continuous() ~ c(0, 1, 0, 1, 1))) %>% 
  bold_labels()

tab1_SD


####  Past history  -----

tab2_PH = Gabin_df %>% 
  select( Diabetes, Hypertension, `Previous bone surgery`, `Major accident`,
          Smoking, Alcoholism) %>% 
  tbl_summary(digits = list(all_categorical() ~ c(0, 1),
                            all_continuous() ~ c(0,1))) %>% 
  bold_labels()

tab2_PH

####  Clinical x-tics  -----

tab3_CC = Gabin_df %>% 
  select( Etiology, `Fracture form`, `Fracture type`, `Fracture pattern (AO)`,
          `Proximal segment affected`, `Middle segment affected`, `Distal segment affected`,
          `Is there an associated lesion`, `Other bone fractures`, TBI, TSI, `Thoracic injury`,
          `Abdominal injury`, `Pelvic injury`, `Maxillofacial injury`) %>% 
  tbl_summary(digits = list(all_categorical() ~ c(0, 1),
                            all_continuous() ~ c(0,1))) %>% 
  bold_labels()

tab3_CC


####  Management  -----

tab4_TO = Gabin_df %>% 
  select( `Treatment modality_rec`, `Is there any complication`, Infection, `Pulmonary embolism`,
          DVT, `Compartment syndrome`) %>% 
  tbl_summary(digits = list(all_categorical() ~ c(0, 1),
                            all_continuous() ~ c(0,1))) %>% 
  bold_labels()

tab4_TO




##############    CROSS-TABS    -----------------
library(flextable)

####  Distribution by year -----

Prev_yr = Gabin_df %>% 
  select(`Year of admission into the hospital`) %>% 
  tbl_summary(digits = list(all_categorical() ~ c(0, 1),
                            all_continuous() ~ c(0,1)))

Prev_yr

####  Aetiology and socio-demographics  -----
ks.test(Gabin_df$Age, 'pnorm')
shapiro.test(Gabin_df$Age)

Ctab1_etioSD = Gabin_df %>% 
  select( Age, Age_rec, Sex, Occupation_rec, Residence, Etiology) %>% 
  tbl_summary(by = Etiology,
            statistic = all_continuous() ~ "{mean} +/- {sd}",
            percent = "row",
            digits = list(all_categorical() ~ c(0, 1),
                          all_continuous() ~ c(0,1))) %>% 
  modify_spanning_header(all_stat_cols() ~ "**Aetiology of tibial fracture**") %>% 
  add_p(test = all_continuous() ~ "aov") %>% 
  bold_p() %>% 
  bold_labels() %>% 
  as_flex_table() %>% 
  set_table_properties(layout = "autofit")

Ctab1_etioSD


####  Treatment modality and fracture characteristics  -----

Ctab2_TF = Gabin_df %>% 
  select( `Fracture form`, `Fracture type`, `Fracture pattern (AO)`,
          `Proximal segment affected`, `Middle segment affected`, `Distal segment affected`,
          `Treatment modality_rec`) %>% 
  tbl_summary(by = `Treatment modality_rec`,
              percent = "row",
              digits = list(all_categorical() ~ c(0, 1),
                            all_continuous() ~ c(0, 1))) %>% 
  add_p(test = `Fracture pattern (AO)` ~ "chisq.test" ) %>% 
  bold_p() %>%  
  modify_spanning_header(all_stat_cols() ~ "**Treatment modality**") %>%
  bold_labels() %>% 
  as_flex_table() %>% 
  set_table_properties(layout = "autofit")
 
Ctab2_TF


#### Complications and clinical xtics   ------

Ctab3_comp = Gabin_df %>% 
  select( Age, Age_rec, Sex, Residence, Occupation_rec,
          Diabetes, Hypertension, Smoking, Alcoholism, `Previous bone surgery`, `Major accident`,
          Etiology,`Fracture form`, `Fracture type`, `Fracture pattern (AO)`,
          `Proximal segment affected`, `Middle segment affected`, `Distal segment affected`,
          `Is there an associated lesion`, `Other bone fractures`, TBI, TSI, `Thoracic injury`,
          `Abdominal injury`, `Treatment modality_rec`, `Is there any complication`) %>% 
  tbl_summary(by = `Is there any complication`,
              percent = "row",
              type = Age ~ "continuous",
              statistic = all_continuous() ~ "{mean} +/- {sd}",
              digits = list(all_categorical() ~ c(0, 1),
                            all_continuous() ~ c(0, 1))) %>% 
  add_p(test = all_continuous() ~ "t.test") %>% 
  bold_p() %>%  
  modify_spanning_header(all_stat_cols() ~ "**Developed complications**") %>%
  bold_labels() 

Ctab3_comp


##### Trying UV regression, Outcome = treatment modality   -----


Ctab4_uv = Gabin_df %>% 
  select( Age, Age_rec, Sex, Residence, Occupation_rec,
          Diabetes, Hypertension, Smoking, Alcoholism, `Previous bone surgery`, `Major accident`,
          Etiology,`Fracture form`, `Fracture type`, `Fracture pattern (AO)`,
          `Proximal segment affected`, `Middle segment affected`, `Distal segment affected`,
          `Is there an associated lesion`, `Other bone fractures`, TBI, TSI, `Thoracic injury`,
          `Abdominal injury`, `Treatment modality_rec`, `Is there any complication`) %>% 
  tbl_uvregression(y = `Treatment modality_rec`,
                   method = glm,
                   method.args = list(family = binomial),
                   exponentiate = T,
                   hide_n = T) %>%
  bold_p() %>%
  bold_labels() %>% 
  as_flex_table() %>% 
  set_table_properties(layout = "autofit")

Ctab4_uv

