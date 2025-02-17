########   IMPORTING DATA   ---------

library(readr)
Ornella_UB <- read_csv("~/Training data Analysis/Tabulations/DATA COLLECTION FORM .csv")
View(Ornella_UB)



########   TAKING A GLANCE  -------------
library(summarytools)

Orne_smr = dfSummary(Ornella_UB)
view(Orne_smr)



########    RECODING ---------
library(tidyverse)

### As factors
Ornella_UB[, c(3,5:18,20:23)] <- lapply(Ornella_UB[, c(3,5:18,20:23)], as.factor) 


## Recoding Ornella_UB$`Do you use any method of contraception`
levels(Ornella_UB$`Do you use any method of contraception`)[levels(Ornella_UB$`Do you use any method of contraception`) == "yes"] <- "Yes"


## Cutting Ornella_UB$Age into Ornella_UB$Age_rec
Ornella_UB$Age_rec <- cut(Ornella_UB$Age,
  include.lowest = TRUE,
  right = FALSE,
  dig.lab = 4,
  breaks = c(15, 20, 30, 40, 50))


## Reordering column 6
## Reordering Ornella_UB$`Marital status`
Ornella_UB$`Marital status` <- Ornella_UB$`Marital status` %>%
  fct_relevel("Married", "Single", "Divorced", "Widow")


## Recoding Ornella_UB$`Level of education`
Ornella_UB$`Level of education` <- Ornella_UB$`Level of education` %>%
  fct_explicit_na("None")


## Reordering Ornella_UB$`Level of monthly income`
Ornella_UB$`Level of monthly income` <- Ornella_UB$`Level of monthly income` %>%
  fct_relevel( "None", "<30,000fcfa", "30,000- <50,000fcfa", "50,000-100,000fcfa", ">100,000fcfa")


## Recoding Ornella_UB$`Level of monthly income` into Ornella_UB$`Level of monthly income`
Ornella_UB$`Level of monthly income` <- Ornella_UB$`Level of monthly income` %>%
  fct_explicit_na("None")


## Reordering Ornella_UB$`Number of pregnancies`
Ornella_UB$`Number of pregnancies` <- Ornella_UB$`Number of pregnancies` %>%
  fct_relevel("<3", "(3-5)", ">5")


## Reordering Ornella_UB$`Number of children`
Ornella_UB$`Number of children` <- Ornella_UB$`Number of children` %>%
  fct_relevel("0 - 2", "(3-5)", ">5")


## Reordering Ornella_UB$`Inter pregnancy interval between each birth`
Ornella_UB$`Inter pregnancy interval between each birth` <- Ornella_UB$`Inter pregnancy interval between each birth` %>%
  fct_relevel("0 - 2years", "3 - 5years", ">5years")


## Reordering Ornella_UB$`Do you think modern contraceptive methods affects the ability to conceive in the the future?`
Ornella_UB$`Do modern contraceptive methods affect the ability to conceive?` <- Ornella_UB$`Do you think modern contraceptive methods affects the ability to conceive in the the future?` %>%
  fct_relevel("Yes", "No", "Maybe", "I don't know")


## Recoding Ornella_UB$`Who makes decision concerning contraceptive use?` into Ornella_UB$`Who makes decision concerning contraceptive use?_rec`
Ornella_UB$`Who decides concerning contraceptive use?` <- Ornella_UB$`Who makes decision concerning contraceptive use?` %>%
  fct_recode(
    "Couple" = "Husband and wife",
    "Parents" = "Mother in law",
    "Parents" = "Wife's mother"
  ) %>%
  fct_explicit_na("No one")


## Reglance at it, to be sure everthing is ok
Orne_smr2 = dfSummary(Ornella_UB)
view(Orne_smr2)



###### THE CLEAN DATAFRAME   --------------

Orne_clean = as.data.frame(Ornella_UB$`Patient's code`)

Orne_clean = mutate(Orne_clean, Ornella_UB[, c(25,6,7,9:14,27,18,26,21:23)])



#########  TABLE SUMMARIES  ----------
library(gtsummary)

#####  a)Descriptives ------

## Socio and use of contra
Orne_tbl1 = Orne_clean %>% 
  select(Age_rec, `Marital status`, `Level of education`, `Level of monthly income`, Religion,
         `Do you use any method of contraception`) %>% 
  tbl_summary(by = `Do you use any method of contraception`,
              digits = list(all_categorical() ~ c(0, 1))) %>% 
  modify_spanning_header(all_stat_cols() ~ "**Use Contraceptives**") %>% 
  add_overall() %>% 
  add_p() %>% 
  bold_p() %>% 
  bold_labels()

Orne_tbl1  


## Obste and use of contra
Orne_tbl2 = Orne_clean %>% 
  select(`Number of pregnancies`, `Number of children`, `Inter pregnancy interval between each birth`,
         `Do you use any method of contraception`) %>% 
  tbl_summary(by = `Do you use any method of contraception`,
              digits = list(all_categorical() ~ c(0, 1))) %>%
  modify_spanning_header(all_stat_cols() ~ "**Use Contraceptives**") %>% 
  add_p() %>% 
  add_overall() %>% 
  bold_p() %>% 
  bold_labels()
Orne_tbl2  


## Decision making and use of contra
Orne_tbl3 = Orne_clean %>% 
  select(`Do you use any method of contraception`, `Who decides concerning contraceptive use?`,
         `Is your husband/partner involved in decision making?`,
         `Does the health care provider give enough information concerning the choice of modern contraceptive methods?`,
         `Does the health care provider, imposes his/her choice concerning the adoption of a modern method of contraception?`,
         `Is the health facility distant from your home?`) %>% 
  tbl_summary(by = `Do you use any method of contraception`,
              digits = list(all_categorical() ~ c(0, 1)),
              missing = "no",
              type = list(everything() ~ "categorical")) %>% 
  modify_spanning_header(all_stat_cols() ~ "**Use Contraceptives**") %>% 
  add_overall() %>% 
  add_p() %>% 
  bold_p() %>% 
  bold_labels()
Orne_tbl3


### b) Bivariate log.Regression  ------

## Socio and use of contra
Orne_uv1 = Orne_clean %>% 
  select(Age_rec, `Marital status`, `Level of education`, `Level of monthly income`, Religion,
         `Do you use any method of contraception`) %>% 
  tbl_uvregression(method = glm,
                   y = `Do you use any method of contraception`,
                   method.args = list(family = binomial),
                   exponentiate = T,
                   hide_n = T) %>% 
  bold_labels() %>% 
  bold_p()
Orne_uv1


## Obste and use of contra
Orne_uv2 = Orne_clean %>% 
  select(`Number of pregnancies`, `Number of children`, `Inter pregnancy interval between each birth`,
         `Do you use any method of contraception`) %>%
  tbl_uvregression(method = glm,
                   y = `Do you use any method of contraception`,
                   method.args = list(family = binomial),
                   exponentiate = T,
                   hide_n = T) %>% 
  bold_labels() %>% 
  bold_p()
Orne_uv2

## Decision making and use of contra
Orne_uv3 = Orne_clean %>% 
  select(`Do you use any method of contraception`, `Who decides concerning contraceptive use?`,
         `Is your husband/partner involved in decision making?`,
         `Does the health care provider give enough information concerning the choice of modern contraceptive methods?`,
         `Does the health care provider, imposes his/her choice concerning the adoption of a modern method of contraception?`,
         `Is the health facility distant from your home?`) %>% 
  tbl_uvregression(method = glm,
                   y = `Do you use any method of contraception`,
                   method.args = list(family = binomial),
                   exponentiate = T,
                   hide_n = T) %>% 
  bold_labels() %>% 
  bold_p()
Orne_uv3



### c) Multivariate analysis  -------

## For signifcant asso on UV ana
Orne_glm = glm(data = Orne_clean,
               `Do you use any method of contraception` ~ Age_rec + `Marital status` +
                 `Level of education` + `Level of monthly income` + Religion +
                 `Number of pregnancies` + `Number of children` + `Inter pregnancy interval between each birth` +
                 `Who decides concerning contraceptive use?` +
                 `Does the health care provider give enough information concerning the choice of modern contraceptive methods?` +
                 `Does the health care provider, imposes his/her choice concerning the adoption of a modern method of contraception?`,
               family = binomial(link = "logit"))

Orne_multi =  tbl_regression(Orne_glm, exponentiate = T) %>% 
  bold_p() %>% 
  bold_labels()
Orne_multi



######## MERGING TABLES    -------------

## Stacking decriptive tabs
tbl_descr = tbl_stack(list(Orne_tbl1, Orne_tbl2, Orne_tbl3)) %>% 
  bold_p()
tbl_descr

## Stacking UV tabs
tbl_uv = tbl_stack(list(Orne_uv1, Orne_uv2, Orne_uv3))
tbl_uv

## Merging descriptive and UV
tbl_all = tbl_merge(list(tbl_descr, tbl_uv),
                    tab_spanner = c("**descriptive**", "**Bivariate**"))
tbl_all

## Merging Descriptive, UV and multi
tbl_all2 = tbl_merge(list(tbl_descr, tbl_uv, Orne_multi),
                     tab_spanner = c("**Descriptive**", "**Bivariate**", "**Multivariate**"))
tbl_all2

