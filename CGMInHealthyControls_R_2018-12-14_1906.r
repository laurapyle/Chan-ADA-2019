#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('H:\\Endocrinology\\Chan\\ADA abstract 2019\\CGMInHealthyControls_DATA_2018-12-14_1906.csv')
#Setting Labels

label(data$subject_id)="Subject ID"
label(data$date_of_ogtt)="Date of OGTT/Blood Draw"
label(data$frequent_sampling_ogtt)="Frequent Sampling OGTT"
label(data$lab_blood_draw_comments)="Lab/Blood Draw Comments"
label(data$min_minus_10_glucose)="-10 Minute Glucose"
label(data$min_minus_10_insulin)="-10 Minute Insulin"
label(data$min_minus_10_c_peptide)="-10 Minute C-peptide"
label(data$min_minus_10_glucagon)="-10 Minute Glucagon"
label(data$min_minus_10_glp_1_active)="-10 Minute GLP-1 Active"
label(data$min_minus_10_glp_1_total)="-10 Minute GLP-1 Total"
label(data$min_minus_10_gip)="-10 Minute GIP"
label(data$poc_fasting_glucose)="POC Fasting Glucose"
label(data$poc_a1c)="POC A1c"
label(data$lab_ogtt_fasting)="Lab OGTT Fasting Glucose"
label(data$min_0_insulin)="0 Minute Insulin"
label(data$min_0_c_peptide)="0 Minute C-peptide"
label(data$min_0_glucagon)="0 Minute Glucagon"
label(data$min_0_glp_1_active)="0 Minute GLP-1 Active"
label(data$min_0_glp_1_total)="0 Minute GLP-1 Total"
label(data$min_0_gip)="0 Minute GIP"
label(data$ag)="1,5 AG"
label(data$fructosamine)="Fructosamine"
label(data$total_albumin)="Total Albumin"
label(data$glycated_albumin)="Glycated Albumin"
label(data$percent_glycated_albumin)="Percent Glycated Albumin"
label(data$min_10_glucose)="10 Minute Glucose"
label(data$min_10_insulin)="10 Minute Insulin"
label(data$min_10_c_peptide)="10 Minute C-peptide"
label(data$min_10_glucagon)="10 Minute Glucagon"
label(data$min_10_glp_1_active)="10 Minute GLP-1 Active"
label(data$min_10_glp_1_total)="10 Minute GLP-1 Total"
label(data$min_10_gip)="10 Minute GIP"
label(data$min_20_glucose)="20 Minute Glucose"
label(data$min_20_insulin)="20 Minute Insulin"
label(data$min_20_c_peptide)="20 Minute C-peptide"
label(data$min_20_glucagon)="20 Minute Glucagon"
label(data$min_20_glp_1_active)="20 Minute GLP-1 Active"
label(data$min_20_glp_1_total)="20 Minute GLP-1 Total"
label(data$min_20_gip)="20 Minute GIP"
label(data$min_30_glucose)="30 Minute Glucose"
label(data$min_30_insulin)="30 Minute Insulin"
label(data$min_30_c_peptide)="30 Minute C-peptide"
label(data$min_30_glucagon)="30 Minute Glucagon"
label(data$min_30_glp_1_active)="30 Minute GLP-1 Active"
label(data$min_30_glp_1_total)="30 Minute GLP-1 Total"
label(data$min_30_gip)="30 Minute GIP"
label(data$lab_ogtt_1_hour_glucose)="Lab OGTT 1 hour Glucose"
label(data$min_60_insulin)="60 Minute Insulin"
label(data$min_60_c_peptide)="60 Minute C-peptide"
label(data$min_60_glucagon)="60 Minute Glucagon"
label(data$min_60_glp_1_active)="60 Minute GLP-1 Active"
label(data$min_60_glp_1_total)="60 Minute GLP-1 Total"
label(data$min_60_gip)="60 Minute GIP"
label(data$min_90_glucose)="90 Minute Glucose"
label(data$min_90_insulin)="90 Minute Insulin"
label(data$min_90_c_peptide)="90 Minute C-peptide"
label(data$min_90_glucagon)="90 Minute Glucagon"
label(data$min_90_glp_1_active)="90 Minute GLP-1 Active"
label(data$min_90_glp_1_total)="90 Minute GLP-1 Total"
label(data$min_90_gip)="90 Minute GIP"
label(data$poc_2_hour_glucose)="POC 2-hour Glucose"
label(data$lab_ogtt_2_hour_glucose)="Lab OGTT 2 hour Glucose"
label(data$min_120_insulin)="120 Minute Insulin"
label(data$min_120_c_peptide)="120 Minute C-peptide"
label(data$min_120_glucagon)="120 Minute Glucagon"
label(data$min_120_glp_1_active)="120 Minute GLP-1 Active"
label(data$min_120_glp_1_total)="120 Minute GLP-1 Total"
label(data$min_120_gip)="120 Minute GIP"
label(data$poc_150_minute_glucose)="POC 150 Minute Glucose"
label(data$min_150_glucose)="150 Minute Glucose"
label(data$min_150_insulin)="150 Minute Insulin"
label(data$min_150_c_peptide)="150 Minute C-peptide"
label(data$min_150_glucagon)="150 Minute Glucagon"
label(data$min_150_glp_1_active)="150 Minute GLP-1 Active"
label(data$min_150_glp_1_total)="150 Minute GLP-1 Total"
label(data$min_150_gip)="150 Minute GIP"
label(data$poc_180_minute_glucose)="POC 180 Minute Glucose"
label(data$min_180_glucose)="180 Minute Glucose"
label(data$min_180_insulin)="180 Minute Insulin"
label(data$min_180_c_peptide)="180 Minute C-peptide"
label(data$min_180_glucagon)="180 Minute Glucagon"
label(data$min_180_glp_1_active)="180 Minute GLP-1 Active"
label(data$min_180_glp_1_total)="180 Minute GLP-1 Total"
label(data$min_180_gip)="180 Minute GIP"
label(data$ogtt_grc_2hr)="OGTT Glucose Response Curve (GRC) 2 hour"
label(data$ogtt_grc_3hr)="OGTT Glucose Response Curve (GRC) 3 hour"
label(data$ogtt_peak_time)="OGTT Peak Time Point"
label(data$ogtt_peak_value)="OGTT Peak Value"
label(data$one_over_fast_ins)="1/Fasting Insulin"
label(data$one_over_fast_cpep)="1/Fasting C-Peptide"
label(data$isi_ins)="Insulinogenic Index (∆I30/∆G30)"
label(data$isi_c_pept)="Insulinogenic Index (∆C-peptide 30/∆G30)"
label(data$odi_ins)="Oral Disposition Index (1/fasting insulin * ∆I30/∆G30)"
label(data$odi_cpep)="Oral Disposition Index  (1/fasting C-peptide * ∆C-peptide 30/∆G30)"
label(data$odi_ins_and_cpep)="Oral Disposition Index (1/fasting insulin * ∆C-peptide 30/∆G30)"
label(data$ogtt_auc_2_hour)="OGTT Area Under the Curve (2 hour)"
label(data$ogtt_auc_3_hour)="OGTT Area Under the Curve (3 hour)"
label(data$crp)="C-Reactive Protein"
label(data$calprotectin)="Calprotectin"
label(data$copeptin)="Copeptin"
label(data$stored_blood_for_future_re)="Stored Blood for Future Research?"
label(data$stored_blood_time_points___1)="Stored Blood Time Points (choice=Fasting)"
label(data$stored_blood_time_points___2)="Stored Blood Time Points (choice=Two Hour)"
label(data$stored_blood_time_points___3)="Stored Blood Time Points (choice=All)"
label(data$stored_blood_time_points___4)="Stored Blood Time Points (choice=None)"
label(data$comments_about_stored_bloo)="Comments about stored blood"
label(data$lab_data_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$frequent_sampling_ogtt.factor = factor(data$frequent_sampling_ogtt,levels=c("1","0"))
data$ogtt_grc_2hr.factor = factor(data$ogtt_grc_2hr,levels=c("1","2","3","4"))
data$ogtt_grc_3hr.factor = factor(data$ogtt_grc_3hr,levels=c("1","2","3","4"))
data$ogtt_peak_time.factor = factor(data$ogtt_peak_time,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$stored_blood_for_future_re.factor = factor(data$stored_blood_for_future_re,levels=c("1","0"))
data$stored_blood_time_points___1.factor = factor(data$stored_blood_time_points___1,levels=c("0","1"))
data$stored_blood_time_points___2.factor = factor(data$stored_blood_time_points___2,levels=c("0","1"))
data$stored_blood_time_points___3.factor = factor(data$stored_blood_time_points___3,levels=c("0","1"))
data$stored_blood_time_points___4.factor = factor(data$stored_blood_time_points___4,levels=c("0","1"))
data$lab_data_complete.factor = factor(data$lab_data_complete,levels=c("0","1","2"))

levels(data$frequent_sampling_ogtt.factor)=c("Yes","No")
levels(data$ogtt_grc_2hr.factor)=c("Monophasic","Biphasic","Triphasic","Unclassified")
levels(data$ogtt_grc_3hr.factor)=c("Monophasic","Biphasic","Triphasic","Unclassified")
levels(data$ogtt_peak_time.factor)=c("-10 Minute","0 Minute","10 Minute","20 Minute","30 Minute","60 Minute","90 Minute","120 Minute","150 Minute","180 Minute")
levels(data$stored_blood_for_future_re.factor)=c("Yes","No")
levels(data$stored_blood_time_points___1.factor)=c("Unchecked","Checked")
levels(data$stored_blood_time_points___2.factor)=c("Unchecked","Checked")
levels(data$stored_blood_time_points___3.factor)=c("Unchecked","Checked")
levels(data$stored_blood_time_points___4.factor)=c("Unchecked","Checked")
levels(data$lab_data_complete.factor)=c("Incomplete","Unverified","Complete")
