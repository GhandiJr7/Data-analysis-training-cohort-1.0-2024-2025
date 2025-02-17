cspro.factor.type = 1
cspro.factor.create.new.variable = FALSE

# CSPro Export Factor Options:

#	cspro.factor.type (0): do not use factors
#	cspro.factor.type (1): factor only discrete numeric variables
#	cspro.factor.type (2): factor both discrete numeric and alpha variables

#	cspro.factor.create.new.variable: TRUE to add the factored variables as separate variables


exported <- read.fortran("C:/Users/junio/OneDrive/Documents/KNT/Data analysis cohort 1 24-25/Training 2024-2025/RESOURCES FOR DATA ANALYSIS COURSE 2024-25/Mildred/Exported.dat",c("I4","A10","A10","I1","A25","I2","A10","I1","I1","I1","I3","F5","I1","I4","F5","I3","F4","A10","I1","I2","I4","I2","I2","F5","F5","F5","F5","F5"))

names(exported) <- c("patient_code","date_of_enrolment","maternal_date_of_birth_dd_mm_yyyy","marital_status","tribe_of_origin","gravidity","lmp","history_of_pcos","passive_exposure_to_tobacco_smokers","are_you_an_active_smoker_of_cigarettes","if_yes_how_many_sticks_daily","cummulatively_for_how_many_years_have_you_been_s","did_you_take_alcohol_while_pregnant","if_yes_what_volume_did_you_take_weekly","what_is_the_abv_of_your_favorite_drink","maternal_pre_pregnancy_weight_in_kg","maternal_height_in_m","infant_date_of_birth","mode_of_delivery","infant_s_birth_order","infant_s_birth_weight","infant_s_full_length_in_cm","infant_s_head_circumference_in_cm","agd_1_in_mm","agd_2_in_mm","agd_as_in_mm","spl_in_mm","pw_in_mm")

if( cspro.factor.type != 0 ) {

	if( cspro.factor.create.new.variable ) {
		exported$marital_status.f <- factor(exported$marital_status,levels = c(1,2,3,4),labels = c("Married/co-habiting","Single","Divorced","widowed"))
	} else {
		exported$marital_status <- factor(exported$marital_status,levels = c(1,2,3,4),labels = c("Married/co-habiting","Single","Divorced","widowed"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$history_of_pcos.f <- factor(exported$history_of_pcos,levels = c(1,2,3),labels = c("NO","YES","I don't know"))
	} else {
		exported$history_of_pcos <- factor(exported$history_of_pcos,levels = c(1,2,3),labels = c("NO","YES","I don't know"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$passive_exposure_to_tobacco_smokers.f <- factor(exported$passive_exposure_to_tobacco_smokers,levels = c(1,2),labels = c("NO","YES"))
	} else {
		exported$passive_exposure_to_tobacco_smokers <- factor(exported$passive_exposure_to_tobacco_smokers,levels = c(1,2),labels = c("NO","YES"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$are_you_an_active_smoker_of_cigarettes.f <- factor(exported$are_you_an_active_smoker_of_cigarettes,levels = c(1,2),labels = c("NO","YES"))
	} else {
		exported$are_you_an_active_smoker_of_cigarettes <- factor(exported$are_you_an_active_smoker_of_cigarettes,levels = c(1,2),labels = c("NO","YES"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$did_you_take_alcohol_while_pregnant.f <- factor(exported$did_you_take_alcohol_while_pregnant,levels = c(1,2),labels = c("NO","YES"))
	} else {
		exported$did_you_take_alcohol_while_pregnant <- factor(exported$did_you_take_alcohol_while_pregnant,levels = c(1,2),labels = c("NO","YES"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$mode_of_delivery.f <- factor(exported$mode_of_delivery,levels = c(1,2),labels = c("Vaginal delivery","Caesarian delivery"))
	} else {
		exported$mode_of_delivery <- factor(exported$mode_of_delivery,levels = c(1,2),labels = c("Vaginal delivery","Caesarian delivery"))
	}

}

rm(cspro.factor.type)
rm(cspro.factor.create.new.variable)
