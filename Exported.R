cspro.factor.type = 1
cspro.factor.create.new.variable = FALSE

# CSPro Export Factor Options:

#	cspro.factor.type (0): do not use factors
#	cspro.factor.type (1): factor only discrete numeric variables
#	cspro.factor.type (2): factor both discrete numeric and alpha variables

#	cspro.factor.create.new.variable: TRUE to add the factored variables as separate variables


exported <- read.fortran("C:/Users/AKOB LISA/Desktop/lisa data analysis/lisa TBI project/Exported.dat",c("I3","A10","I1","A10","A10","I2","I1","I1","I1","I1","A20","I1","A20","I1","A20","I1","A10","A5","A10","A5","I3","I3","I3","I1","A20","I1","I1","A20","I1","A20","I1","I1","I1","I1","A20","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","A20","I3","I3","I3","I2","F4","F4","I3","F4","F4","I3","I2","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","A20","I1","A10","A5","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","A20","I1","I1","I1","I1","I1","I1","A20","I1","I1","I1","I1","I1","I1","I1","I1","A20","I1","I1","I1","I1","I1","I1","I1","I1","I1","A20","I1","I1","I1","I1","I1","I1","I1","A1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","A20","I1","I1","I1","I1","I1","A20","I3","I3","I1","I1","I1","I1","I1","A20","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","I1","A20","I2","I1","I1"))

names(exported) <- c("participant_code","s0q2_date_of_interview_dd_mm_yr","s0q3_participant_admitted","s0q4_date_of_admission","s0q5_date_of_discharge","s1q1_age_of_participants_years","s1q2_sex","s1q3_level_of_education","s1q4_residence","s1q5_religion","s1q6_if_others_specify","s1q7_marital_status","s1q8_if_others_specify","s1q9_caregivers_occupation","s1q10_if_others_specify","s1q11_monthly_income_caregiver","s2q1_date_of_injury_dd_mm_yr","s2q2_time_of_injury","s2q3_date_of_hospital","s2q4time_of_hospital_arrival","s2q5_duration_to_arrive_at_the_hospital","duration_to_arrive_at_the_hospital_hours","duration_to_arrive_at_the_hospital_days","s2q6_means_of_transport","s2q7_if_others_specify","s2q8_intent_of_injury","s2q9_place_of_injury","s2q10_if_others_specify","s2q11_mechanism_of_injury","s2q12_if_others_specify","s2q13_if_rta_who_was_the_victim","s2q14if_fall_where","s2q15_if_assault_what_type","s2q16_if_assault_weapon_of_injury_1","s2q17_if_other_type_of_weapon_specify","s2q18_loss_of_consciousness","s2q19_initial_duration","s2q20_lucid_interval","s2q21_duration_of_lucid_interval","s3q2_initial_loc","s3q3_secondary_loc","s3q4_vomiting","s3q5_projectile_vomiting","s3q6_headache","s3q5_blurred_vision","s3q6_epistasis","s3q7_csf_rhinorrhea","s3q8_amnesia","s3q3_anterograde_amnesia","s3q10_retrograde_amnesia","s3q11_seizures","s3q12_csf_otorrhea","s3q13_ear_bleeding","s3q14_vertigo","s3q15_ataxia","s3q16_confusion","s3q17_loss_of_bowel_bladder_control","s3q18_motor_deficit_paresis","s3q19_speech_abnormality_dysarthria","s3q20_pupillary_abnormality","s3q21_others","s3q22_if_others_specify","systolic_blood_pressure_mmhg","diastolic_blood_pressure_mmhg","heart_rate_bpm","respiratory_rate_cpm","temperature_in_degree_c","weight_kg","height_cm","bmi_kg_m2","muac","spo2","s3q23_gcs_on_arrival_admission","altered_mental_state","abnormal_language","abnormal_gait","cranial_nerve_abnormality","abnormal_motor_function","abnormal_sensory_function","abnormal_reflexes","s3q24_clinical_diagnosis","s3q25_extracranial_lesions","s3q26_face_and_neck","chest","abdomen","limbs","spine","pelvis","others","if_others_specify","s4q1_head_ct_done","s4q2_date_of_first_available_ct_scan","time_when_first_ct_scan_was_done","s4q3_was_there_an_abnormal_finding","s4q4_if_yes_the_finding_skull_fracture","fracture_location","fracture_pattern","depressed_fragments_1cm","pneumocephalus_on_ct","compound_depressed","other_findings_in_skull_fracture","s4q5_intracranial_lesion","focal","focal_subdural","focal_epidural","focal_subarachnoid","intraparenchymal_hemorrhage","cerebral_edema","intraventricular_hemorrhage","midline_shift","basal_cisterns","others_1","if_others_specify_1","diffuse","concussion","contussion","hypoxic_ischaemic_injury","diffuse_axonal_injury","others_2","if_others_specify_2","other_lesions","foreign_body","herniation","s4q6_ct_scan_was_not_done","reason_not_requested","reason_financial_constraints","reason_discharge_against_medical_advice_dama","others_3","if_others_specify_3","s4q7_abbreviated_injury_severity_ais","s5q1a_management_option_used","fluids","analgesics","antiseizures","diurectics","antibiotics","scalp_wound_suture","others_4","if_others_specify_4","s5q2_management_option_used","conservative_medical_fluids","analgesics_1","antisezures","diuretics","antibiotics_1","others_5","if_others_specify_5","surgical_craniotomy","craniectomy","burr_hole","scalp_wound_suture_1","others_6","if_others_specify_6","s5q3_mnagement_option_used","fluids_1","analgesics_2","antisezures_1","duiretics","antibiotics_2","intubation","oxygen_therapy","others_7","if_others_specify_7","craniotomy","craniectomy_1","burr_hole_1","scalp_wound_suture_2","others_8","if_others_specify_8","s6q1_duration_of_hospitalization","s6q2_if_op_case_duration_of_post_op_days","s6q3_discharge_destination","s6q4_discharged_against_medical_advice","reason_financial_constraints_1","reason_for_alternative_treatment","others_9","if_others_specify_10","s6q5_complications","csf_leakage","csf_fistula","motor_deficits","impaired_memory","post_traumatic_co","anaemia","infection","brain_abcess","subdural_empyema","epidural_empyema","surgical_site_infection","others_10","if_others_specify_9","s6q6_gcs_on_discharge","s6q7_gos_at_discharge","s6q8_gos_at_one_month_post_discharge")

if( cspro.factor.type != 0 ) {

	if( cspro.factor.create.new.variable ) {
		exported$s0q3_participant_admitted.f <- factor(exported$s0q3_participant_admitted,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s0q3_participant_admitted <- factor(exported$s0q3_participant_admitted,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s1q2_sex.f <- factor(exported$s1q2_sex,levels = c(1,2),labels = c("male","female"))
	} else {
		exported$s1q2_sex <- factor(exported$s1q2_sex,levels = c(1,2),labels = c("male","female"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s1q3_level_of_education.f <- factor(exported$s1q3_level_of_education,levels = c(1,2,3,4,5,6),labels = c("nursey","primary","secondary","university","Not scholarised (for > 2yrs)","Preschool (<2yrs)"))
	} else {
		exported$s1q3_level_of_education <- factor(exported$s1q3_level_of_education,levels = c(1,2,3,4,5,6),labels = c("nursey","primary","secondary","university","Not scholarised (for > 2yrs)","Preschool (<2yrs)"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s1q4_residence.f <- factor(exported$s1q4_residence,levels = c(1,2),labels = c("rural","urban"))
	} else {
		exported$s1q4_residence <- factor(exported$s1q4_residence,levels = c(1,2),labels = c("rural","urban"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s1q5_religion.f <- factor(exported$s1q5_religion,levels = c(1,2,3),labels = c("christian","muslim","others"))
	} else {
		exported$s1q5_religion <- factor(exported$s1q5_religion,levels = c(1,2,3),labels = c("christian","muslim","others"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s1q7_marital_status.f <- factor(exported$s1q7_marital_status,levels = c(1,2,3,4),labels = c("married","single","divorce","others(specify)"))
	} else {
		exported$s1q7_marital_status <- factor(exported$s1q7_marital_status,levels = c(1,2,3,4),labels = c("married","single","divorce","others(specify)"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s1q9_caregivers_occupation.f <- factor(exported$s1q9_caregivers_occupation,levels = c(1,2,3,4,5),labels = c("teacher","lawyer","doctor","business ","others"))
	} else {
		exported$s1q9_caregivers_occupation <- factor(exported$s1q9_caregivers_occupation,levels = c(1,2,3,4,5),labels = c("teacher","lawyer","doctor","business ","others"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s1q11_monthly_income_caregiver.f <- factor(exported$s1q11_monthly_income_caregiver,levels = c(1,2),labels = c("<60000",">60000"))
	} else {
		exported$s1q11_monthly_income_caregiver <- factor(exported$s1q11_monthly_income_caregiver,levels = c(1,2),labels = c("<60000",">60000"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q6_means_of_transport.f <- factor(exported$s2q6_means_of_transport,levels = c(1,2),labels = c("medicalised","non-medicalised"))
	} else {
		exported$s2q6_means_of_transport <- factor(exported$s2q6_means_of_transport,levels = c(1,2),labels = c("medicalised","non-medicalised"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q8_intent_of_injury.f <- factor(exported$s2q8_intent_of_injury,levels = c(1,2,3),labels = c("unintentional","intentional","self-inflicted"))
	} else {
		exported$s2q8_intent_of_injury <- factor(exported$s2q8_intent_of_injury,levels = c(1,2,3),labels = c("unintentional","intentional","self-inflicted"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q9_place_of_injury.f <- factor(exported$s2q9_place_of_injury,levels = c(1,2,3,4,5),labels = c("home","street","sport area","school","others"))
	} else {
		exported$s2q9_place_of_injury <- factor(exported$s2q9_place_of_injury,levels = c(1,2,3,4,5),labels = c("home","street","sport area","school","others"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q11_mechanism_of_injury.f <- factor(exported$s2q11_mechanism_of_injury,levels = c(1,2,3,4,5,6,7),labels = c("RTA","sport accident","fall","assault","firearm","domestic violence","others"))
	} else {
		exported$s2q11_mechanism_of_injury <- factor(exported$s2q11_mechanism_of_injury,levels = c(1,2,3,4,5,6,7),labels = c("RTA","sport accident","fall","assault","firearm","domestic violence","others"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q13_if_rta_who_was_the_victim.f <- factor(exported$s2q13_if_rta_who_was_the_victim,levels = c(1,2,3,4,5),labels = c("pedestrian ","motorcyclist","driver","passenger","unknown"))
	} else {
		exported$s2q13_if_rta_who_was_the_victim <- factor(exported$s2q13_if_rta_who_was_the_victim,levels = c(1,2,3,4,5),labels = c("pedestrian ","motorcyclist","driver","passenger","unknown"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q14if_fall_where.f <- factor(exported$s2q14if_fall_where,levels = c(1,2,3,4),labels = c("from trees ","building","fence","own height"))
	} else {
		exported$s2q14if_fall_where <- factor(exported$s2q14if_fall_where,levels = c(1,2,3,4),labels = c("from trees ","building","fence","own height"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q15_if_assault_what_type.f <- factor(exported$s2q15_if_assault_what_type,levels = c(1,2),labels = c("unarmed","armed"))
	} else {
		exported$s2q15_if_assault_what_type <- factor(exported$s2q15_if_assault_what_type,levels = c(1,2),labels = c("unarmed","armed"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q16_if_assault_weapon_of_injury_1.f <- factor(exported$s2q16_if_assault_weapon_of_injury_1,levels = c(1,2,3,4,5,6),labels = c("blunt","sharp(knife/nail) ","glasses/bottles ","fist ","unknown","others"))
	} else {
		exported$s2q16_if_assault_weapon_of_injury_1 <- factor(exported$s2q16_if_assault_weapon_of_injury_1,levels = c(1,2,3,4,5,6),labels = c("blunt","sharp(knife/nail) ","glasses/bottles ","fist ","unknown","others"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q18_loss_of_consciousness.f <- factor(exported$s2q18_loss_of_consciousness,levels = c(1,2),labels = c("Yes","No"))
	} else {
		exported$s2q18_loss_of_consciousness <- factor(exported$s2q18_loss_of_consciousness,levels = c(1,2),labels = c("Yes","No"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q19_initial_duration.f <- factor(exported$s2q19_initial_duration,levels = c(1,2,3,4,5),labels = c("30mins ","1hour ","1.5hours ","2hours ","unknown"))
	} else {
		exported$s2q19_initial_duration <- factor(exported$s2q19_initial_duration,levels = c(1,2,3,4,5),labels = c("30mins ","1hour ","1.5hours ","2hours ","unknown"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q20_lucid_interval.f <- factor(exported$s2q20_lucid_interval,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s2q20_lucid_interval <- factor(exported$s2q20_lucid_interval,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2q21_duration_of_lucid_interval.f <- factor(exported$s2q21_duration_of_lucid_interval,levels = c(1,2,3,4,5,6,7),labels = c("5mins","10mins","15mins","20mins","30min","1hour","unknown"))
	} else {
		exported$s2q21_duration_of_lucid_interval <- factor(exported$s2q21_duration_of_lucid_interval,levels = c(1,2,3,4,5,6,7),labels = c("5mins","10mins","15mins","20mins","30min","1hour","unknown"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q2_initial_loc.f <- factor(exported$s3q2_initial_loc,levels = c(1,2),labels = c("yes","no "))
	} else {
		exported$s3q2_initial_loc <- factor(exported$s3q2_initial_loc,levels = c(1,2),labels = c("yes","no "))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q3_secondary_loc.f <- factor(exported$s3q3_secondary_loc,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q3_secondary_loc <- factor(exported$s3q3_secondary_loc,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q4_vomiting.f <- factor(exported$s3q4_vomiting,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q4_vomiting <- factor(exported$s3q4_vomiting,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q5_projectile_vomiting.f <- factor(exported$s3q5_projectile_vomiting,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q5_projectile_vomiting <- factor(exported$s3q5_projectile_vomiting,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q6_headache.f <- factor(exported$s3q6_headache,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q6_headache <- factor(exported$s3q6_headache,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q5_blurred_vision.f <- factor(exported$s3q5_blurred_vision,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q5_blurred_vision <- factor(exported$s3q5_blurred_vision,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q6_epistasis.f <- factor(exported$s3q6_epistasis,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q6_epistasis <- factor(exported$s3q6_epistasis,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q7_csf_rhinorrhea.f <- factor(exported$s3q7_csf_rhinorrhea,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q7_csf_rhinorrhea <- factor(exported$s3q7_csf_rhinorrhea,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q8_amnesia.f <- factor(exported$s3q8_amnesia,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q8_amnesia <- factor(exported$s3q8_amnesia,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q3_anterograde_amnesia.f <- factor(exported$s3q3_anterograde_amnesia,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q3_anterograde_amnesia <- factor(exported$s3q3_anterograde_amnesia,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q10_retrograde_amnesia.f <- factor(exported$s3q10_retrograde_amnesia,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q10_retrograde_amnesia <- factor(exported$s3q10_retrograde_amnesia,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q11_seizures.f <- factor(exported$s3q11_seizures,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q11_seizures <- factor(exported$s3q11_seizures,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q12_csf_otorrhea.f <- factor(exported$s3q12_csf_otorrhea,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q12_csf_otorrhea <- factor(exported$s3q12_csf_otorrhea,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q13_ear_bleeding.f <- factor(exported$s3q13_ear_bleeding,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q13_ear_bleeding <- factor(exported$s3q13_ear_bleeding,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q14_vertigo.f <- factor(exported$s3q14_vertigo,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q14_vertigo <- factor(exported$s3q14_vertigo,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q15_ataxia.f <- factor(exported$s3q15_ataxia,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q15_ataxia <- factor(exported$s3q15_ataxia,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q16_confusion.f <- factor(exported$s3q16_confusion,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q16_confusion <- factor(exported$s3q16_confusion,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q17_loss_of_bowel_bladder_control.f <- factor(exported$s3q17_loss_of_bowel_bladder_control,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q17_loss_of_bowel_bladder_control <- factor(exported$s3q17_loss_of_bowel_bladder_control,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q18_motor_deficit_paresis.f <- factor(exported$s3q18_motor_deficit_paresis,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q18_motor_deficit_paresis <- factor(exported$s3q18_motor_deficit_paresis,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q19_speech_abnormality_dysarthria.f <- factor(exported$s3q19_speech_abnormality_dysarthria,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q19_speech_abnormality_dysarthria <- factor(exported$s3q19_speech_abnormality_dysarthria,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q20_pupillary_abnormality.f <- factor(exported$s3q20_pupillary_abnormality,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q20_pupillary_abnormality <- factor(exported$s3q20_pupillary_abnormality,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q21_others.f <- factor(exported$s3q21_others,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q21_others <- factor(exported$s3q21_others,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$altered_mental_state.f <- factor(exported$altered_mental_state,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$altered_mental_state <- factor(exported$altered_mental_state,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$abnormal_language.f <- factor(exported$abnormal_language,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$abnormal_language <- factor(exported$abnormal_language,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$abnormal_gait.f <- factor(exported$abnormal_gait,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$abnormal_gait <- factor(exported$abnormal_gait,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$cranial_nerve_abnormality.f <- factor(exported$cranial_nerve_abnormality,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$cranial_nerve_abnormality <- factor(exported$cranial_nerve_abnormality,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$abnormal_motor_function.f <- factor(exported$abnormal_motor_function,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$abnormal_motor_function <- factor(exported$abnormal_motor_function,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$abnormal_sensory_function.f <- factor(exported$abnormal_sensory_function,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$abnormal_sensory_function <- factor(exported$abnormal_sensory_function,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$abnormal_reflexes.f <- factor(exported$abnormal_reflexes,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$abnormal_reflexes <- factor(exported$abnormal_reflexes,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q24_clinical_diagnosis.f <- factor(exported$s3q24_clinical_diagnosis,levels = c(1,2,3),labels = c("Mild TBI ","Moderate TBI","Severe TBI "))
	} else {
		exported$s3q24_clinical_diagnosis <- factor(exported$s3q24_clinical_diagnosis,levels = c(1,2,3),labels = c("Mild TBI ","Moderate TBI","Severe TBI "))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q25_extracranial_lesions.f <- factor(exported$s3q25_extracranial_lesions,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q25_extracranial_lesions <- factor(exported$s3q25_extracranial_lesions,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3q26_face_and_neck.f <- factor(exported$s3q26_face_and_neck,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s3q26_face_and_neck <- factor(exported$s3q26_face_and_neck,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$chest.f <- factor(exported$chest,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$chest <- factor(exported$chest,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$abdomen.f <- factor(exported$abdomen,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$abdomen <- factor(exported$abdomen,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$limbs.f <- factor(exported$limbs,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$limbs <- factor(exported$limbs,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$spine.f <- factor(exported$spine,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$spine <- factor(exported$spine,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$pelvis.f <- factor(exported$pelvis,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$pelvis <- factor(exported$pelvis,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others.f <- factor(exported$others,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others <- factor(exported$others,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.type == 2 ) {
		if( cspro.factor.create.new.variable ) {
			exported$if_others_specify.f <- factor(exported$if_others_specify,levels = c(),labels = c())
		} else {
			exported$if_others_specify <- factor(exported$if_others_specify,levels = c(),labels = c())
		}
	}

	if( cspro.factor.create.new.variable ) {
		exported$s4q1_head_ct_done.f <- factor(exported$s4q1_head_ct_done,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s4q1_head_ct_done <- factor(exported$s4q1_head_ct_done,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s4q3_was_there_an_abnormal_finding.f <- factor(exported$s4q3_was_there_an_abnormal_finding,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s4q3_was_there_an_abnormal_finding <- factor(exported$s4q3_was_there_an_abnormal_finding,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s4q4_if_yes_the_finding_skull_fracture.f <- factor(exported$s4q4_if_yes_the_finding_skull_fracture,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s4q4_if_yes_the_finding_skull_fracture <- factor(exported$s4q4_if_yes_the_finding_skull_fracture,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$fracture_location.f <- factor(exported$fracture_location,levels = c(1,2,3),labels = c("vault","basilar","both "))
	} else {
		exported$fracture_location <- factor(exported$fracture_location,levels = c(1,2,3),labels = c("vault","basilar","both "))
	}

	if( cspro.factor.create.new.variable ) {
		exported$fracture_pattern.f <- factor(exported$fracture_pattern,levels = c(1,2,3),labels = c("depressed","non depressed","penetrating"))
	} else {
		exported$fracture_pattern <- factor(exported$fracture_pattern,levels = c(1,2,3),labels = c("depressed","non depressed","penetrating"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$depressed_fragments_1cm.f <- factor(exported$depressed_fragments_1cm,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$depressed_fragments_1cm <- factor(exported$depressed_fragments_1cm,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$pneumocephalus_on_ct.f <- factor(exported$pneumocephalus_on_ct,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$pneumocephalus_on_ct <- factor(exported$pneumocephalus_on_ct,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$compound_depressed.f <- factor(exported$compound_depressed,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$compound_depressed <- factor(exported$compound_depressed,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$other_findings_in_skull_fracture.f <- factor(exported$other_findings_in_skull_fracture,levels = c(1,2,3),labels = c(" CSF leakage","Nerve palsy","None"))
	} else {
		exported$other_findings_in_skull_fracture <- factor(exported$other_findings_in_skull_fracture,levels = c(1,2,3),labels = c(" CSF leakage","Nerve palsy","None"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s4q5_intracranial_lesion.f <- factor(exported$s4q5_intracranial_lesion,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s4q5_intracranial_lesion <- factor(exported$s4q5_intracranial_lesion,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$focal.f <- factor(exported$focal,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$focal <- factor(exported$focal,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$focal_subdural.f <- factor(exported$focal_subdural,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$focal_subdural <- factor(exported$focal_subdural,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$focal_epidural.f <- factor(exported$focal_epidural,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$focal_epidural <- factor(exported$focal_epidural,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$focal_subarachnoid.f <- factor(exported$focal_subarachnoid,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$focal_subarachnoid <- factor(exported$focal_subarachnoid,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$intraparenchymal_hemorrhage.f <- factor(exported$intraparenchymal_hemorrhage,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$intraparenchymal_hemorrhage <- factor(exported$intraparenchymal_hemorrhage,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$cerebral_edema.f <- factor(exported$cerebral_edema,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$cerebral_edema <- factor(exported$cerebral_edema,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$intraventricular_hemorrhage.f <- factor(exported$intraventricular_hemorrhage,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$intraventricular_hemorrhage <- factor(exported$intraventricular_hemorrhage,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$midline_shift.f <- factor(exported$midline_shift,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$midline_shift <- factor(exported$midline_shift,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$basal_cisterns.f <- factor(exported$basal_cisterns,levels = c(1,2,3),labels = c("open","compressed","obliterated"))
	} else {
		exported$basal_cisterns <- factor(exported$basal_cisterns,levels = c(1,2,3),labels = c("open","compressed","obliterated"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_1.f <- factor(exported$others_1,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_1 <- factor(exported$others_1,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$diffuse.f <- factor(exported$diffuse,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$diffuse <- factor(exported$diffuse,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$concussion.f <- factor(exported$concussion,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$concussion <- factor(exported$concussion,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$contussion.f <- factor(exported$contussion,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$contussion <- factor(exported$contussion,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$hypoxic_ischaemic_injury.f <- factor(exported$hypoxic_ischaemic_injury,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$hypoxic_ischaemic_injury <- factor(exported$hypoxic_ischaemic_injury,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$diffuse_axonal_injury.f <- factor(exported$diffuse_axonal_injury,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$diffuse_axonal_injury <- factor(exported$diffuse_axonal_injury,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_2.f <- factor(exported$others_2,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_2 <- factor(exported$others_2,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$other_lesions.f <- factor(exported$other_lesions,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$other_lesions <- factor(exported$other_lesions,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$foreign_body.f <- factor(exported$foreign_body,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$foreign_body <- factor(exported$foreign_body,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$herniation.f <- factor(exported$herniation,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$herniation <- factor(exported$herniation,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s4q6_ct_scan_was_not_done.f <- factor(exported$s4q6_ct_scan_was_not_done,levels = c(1,2),labels = c("Yes, it was not done","No, it was done"))
	} else {
		exported$s4q6_ct_scan_was_not_done <- factor(exported$s4q6_ct_scan_was_not_done,levels = c(1,2),labels = c("Yes, it was not done","No, it was done"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$reason_not_requested.f <- factor(exported$reason_not_requested,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$reason_not_requested <- factor(exported$reason_not_requested,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$reason_financial_constraints.f <- factor(exported$reason_financial_constraints,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$reason_financial_constraints <- factor(exported$reason_financial_constraints,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$reason_discharge_against_medical_advice_dama.f <- factor(exported$reason_discharge_against_medical_advice_dama,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$reason_discharge_against_medical_advice_dama <- factor(exported$reason_discharge_against_medical_advice_dama,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_3.f <- factor(exported$others_3,levels = c(2,1),labels = c("no","yes"))
	} else {
		exported$others_3 <- factor(exported$others_3,levels = c(2,1),labels = c("no","yes"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s4q7_abbreviated_injury_severity_ais.f <- factor(exported$s4q7_abbreviated_injury_severity_ais,levels = c(1,2,3,4,5,6),labels = c("minor (no treatment) ","moderate (requires only outpatient treatment) \","serious (requires no hospital admission) ","severe (requires observation and or basic treatment ) ","critical(requires intubation, mechanical ventilation or vasopressors for blood support) ","maximal (non-survival)"))
	} else {
		exported$s4q7_abbreviated_injury_severity_ais <- factor(exported$s4q7_abbreviated_injury_severity_ais,levels = c(1,2,3,4,5,6),labels = c("minor (no treatment) ","moderate (requires only outpatient treatment) \","serious (requires no hospital admission) ","severe (requires observation and or basic treatment ) ","critical(requires intubation, mechanical ventilation or vasopressors for blood support) ","maximal (non-survival)"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s5q1a_management_option_used.f <- factor(exported$s5q1a_management_option_used,levels = c(1,2,3),labels = c("observational ONLY","conservative/medical ONLY ","medical and surgical "))
	} else {
		exported$s5q1a_management_option_used <- factor(exported$s5q1a_management_option_used,levels = c(1,2,3),labels = c("observational ONLY","conservative/medical ONLY ","medical and surgical "))
	}

	if( cspro.factor.create.new.variable ) {
		exported$fluids.f <- factor(exported$fluids,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$fluids <- factor(exported$fluids,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$analgesics.f <- factor(exported$analgesics,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$analgesics <- factor(exported$analgesics,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$antiseizures.f <- factor(exported$antiseizures,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$antiseizures <- factor(exported$antiseizures,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$diurectics.f <- factor(exported$diurectics,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$diurectics <- factor(exported$diurectics,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$antibiotics.f <- factor(exported$antibiotics,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$antibiotics <- factor(exported$antibiotics,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$scalp_wound_suture.f <- factor(exported$scalp_wound_suture,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$scalp_wound_suture <- factor(exported$scalp_wound_suture,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_4.f <- factor(exported$others_4,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_4 <- factor(exported$others_4,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s5q2_management_option_used.f <- factor(exported$s5q2_management_option_used,levels = c(1,2,3),labels = c("observational ONLY","conservative/medical ONLY","medical and surgical "))
	} else {
		exported$s5q2_management_option_used <- factor(exported$s5q2_management_option_used,levels = c(1,2,3),labels = c("observational ONLY","conservative/medical ONLY","medical and surgical "))
	}

	if( cspro.factor.create.new.variable ) {
		exported$conservative_medical_fluids.f <- factor(exported$conservative_medical_fluids,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$conservative_medical_fluids <- factor(exported$conservative_medical_fluids,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$analgesics_1.f <- factor(exported$analgesics_1,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$analgesics_1 <- factor(exported$analgesics_1,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$antisezures.f <- factor(exported$antisezures,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$antisezures <- factor(exported$antisezures,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$diuretics.f <- factor(exported$diuretics,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$diuretics <- factor(exported$diuretics,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$antibiotics_1.f <- factor(exported$antibiotics_1,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$antibiotics_1 <- factor(exported$antibiotics_1,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_5.f <- factor(exported$others_5,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_5 <- factor(exported$others_5,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$surgical_craniotomy.f <- factor(exported$surgical_craniotomy,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$surgical_craniotomy <- factor(exported$surgical_craniotomy,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$craniectomy.f <- factor(exported$craniectomy,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$craniectomy <- factor(exported$craniectomy,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$burr_hole.f <- factor(exported$burr_hole,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$burr_hole <- factor(exported$burr_hole,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$scalp_wound_suture_1.f <- factor(exported$scalp_wound_suture_1,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$scalp_wound_suture_1 <- factor(exported$scalp_wound_suture_1,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_6.f <- factor(exported$others_6,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_6 <- factor(exported$others_6,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s5q3_mnagement_option_used.f <- factor(exported$s5q3_mnagement_option_used,levels = c(1,2,3),labels = c("observational ONLY","conservative/medical ONLY","medical and surgical"))
	} else {
		exported$s5q3_mnagement_option_used <- factor(exported$s5q3_mnagement_option_used,levels = c(1,2,3),labels = c("observational ONLY","conservative/medical ONLY","medical and surgical"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$fluids_1.f <- factor(exported$fluids_1,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$fluids_1 <- factor(exported$fluids_1,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$analgesics_2.f <- factor(exported$analgesics_2,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$analgesics_2 <- factor(exported$analgesics_2,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$duiretics.f <- factor(exported$duiretics,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$duiretics <- factor(exported$duiretics,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$antibiotics_2.f <- factor(exported$antibiotics_2,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$antibiotics_2 <- factor(exported$antibiotics_2,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$intubation.f <- factor(exported$intubation,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$intubation <- factor(exported$intubation,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$oxygen_therapy.f <- factor(exported$oxygen_therapy,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$oxygen_therapy <- factor(exported$oxygen_therapy,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_7.f <- factor(exported$others_7,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_7 <- factor(exported$others_7,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$craniotomy.f <- factor(exported$craniotomy,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$craniotomy <- factor(exported$craniotomy,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$craniectomy_1.f <- factor(exported$craniectomy_1,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$craniectomy_1 <- factor(exported$craniectomy_1,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$burr_hole_1.f <- factor(exported$burr_hole_1,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$burr_hole_1 <- factor(exported$burr_hole_1,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$scalp_wound_suture_2.f <- factor(exported$scalp_wound_suture_2,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$scalp_wound_suture_2 <- factor(exported$scalp_wound_suture_2,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_8.f <- factor(exported$others_8,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_8 <- factor(exported$others_8,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s6q3_discharge_destination.f <- factor(exported$s6q3_discharge_destination,levels = c(1,2,3,4,5,6,7,8),labels = c("examined / sent home without treatment ","sent home after treatment ","treated /referred to outpatient for follow up","left against medical advice ","treated/ admitted to this hospital ","referred to another hospital","deceased before arrival ","deceased during hospitalisation"))
	} else {
		exported$s6q3_discharge_destination <- factor(exported$s6q3_discharge_destination,levels = c(1,2,3,4,5,6,7,8),labels = c("examined / sent home without treatment ","sent home after treatment ","treated /referred to outpatient for follow up","left against medical advice ","treated/ admitted to this hospital ","referred to another hospital","deceased before arrival ","deceased during hospitalisation"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s6q4_discharged_against_medical_advice.f <- factor(exported$s6q4_discharged_against_medical_advice,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s6q4_discharged_against_medical_advice <- factor(exported$s6q4_discharged_against_medical_advice,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$reason_financial_constraints_1.f <- factor(exported$reason_financial_constraints_1,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$reason_financial_constraints_1 <- factor(exported$reason_financial_constraints_1,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$reason_for_alternative_treatment.f <- factor(exported$reason_for_alternative_treatment,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$reason_for_alternative_treatment <- factor(exported$reason_for_alternative_treatment,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_9.f <- factor(exported$others_9,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_9 <- factor(exported$others_9,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s6q5_complications.f <- factor(exported$s6q5_complications,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$s6q5_complications <- factor(exported$s6q5_complications,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$csf_leakage.f <- factor(exported$csf_leakage,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$csf_leakage <- factor(exported$csf_leakage,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$csf_fistula.f <- factor(exported$csf_fistula,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$csf_fistula <- factor(exported$csf_fistula,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$motor_deficits.f <- factor(exported$motor_deficits,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$motor_deficits <- factor(exported$motor_deficits,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$impaired_memory.f <- factor(exported$impaired_memory,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$impaired_memory <- factor(exported$impaired_memory,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$post_traumatic_co.f <- factor(exported$post_traumatic_co,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$post_traumatic_co <- factor(exported$post_traumatic_co,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$anaemia.f <- factor(exported$anaemia,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$anaemia <- factor(exported$anaemia,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$infection.f <- factor(exported$infection,levels = c(2,1),labels = c("no","yes"))
	} else {
		exported$infection <- factor(exported$infection,levels = c(2,1),labels = c("no","yes"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$brain_abcess.f <- factor(exported$brain_abcess,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$brain_abcess <- factor(exported$brain_abcess,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$subdural_empyema.f <- factor(exported$subdural_empyema,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$subdural_empyema <- factor(exported$subdural_empyema,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$epidural_empyema.f <- factor(exported$epidural_empyema,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$epidural_empyema <- factor(exported$epidural_empyema,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$surgical_site_infection.f <- factor(exported$surgical_site_infection,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$surgical_site_infection <- factor(exported$surgical_site_infection,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$others_10.f <- factor(exported$others_10,levels = c(1,2),labels = c("yes","no"))
	} else {
		exported$others_10 <- factor(exported$others_10,levels = c(1,2),labels = c("yes","no"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s6q7_gos_at_discharge.f <- factor(exported$s6q7_gos_at_discharge,levels = c(1,2,3,4,5),labels = c("Dead","Vegetative State","Severe Disability","Moderate Disability","Good Recovery"))
	} else {
		exported$s6q7_gos_at_discharge <- factor(exported$s6q7_gos_at_discharge,levels = c(1,2,3,4,5),labels = c("Dead","Vegetative State","Severe Disability","Moderate Disability","Good Recovery"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s6q8_gos_at_one_month_post_discharge.f <- factor(exported$s6q8_gos_at_one_month_post_discharge,levels = c(1,2,3,4,5,6),labels = c("dead","vegetative state ","severe disability","moderate disability","good recovery","Unknown"))
	} else {
		exported$s6q8_gos_at_one_month_post_discharge <- factor(exported$s6q8_gos_at_one_month_post_discharge,levels = c(1,2,3,4,5,6),labels = c("dead","vegetative state ","severe disability","moderate disability","good recovery","Unknown"))
	}

}

rm(cspro.factor.type)
rm(cspro.factor.create.new.variable)
