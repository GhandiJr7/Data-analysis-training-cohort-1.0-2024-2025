#########  TABLE SUMMARIES  ----------
library(gtsummary)


#####  a)Descriptives

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

### b) Bivariate log.Regression

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

### c) Multivariate analysis
?tbl_regression

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
              bold_p()
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




######## EXPORTING TO WORD   -----------
library(flextable)

