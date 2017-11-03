**SAS code for ?Vascular placental pathology and the relationship between hypertensive disorders of pregnancy and neonatal outcomes in very low birth weight infants?

Lisa Strouss MD 1,2,3, Neal D. Goldstein PhD 1,4, Robert Locke DO 1,2, and David A. Paul MD, 1,2 

1 Christiana Care Health System, Department of Pediatrics, Newark, DE, 
2 Sidney Kimmel Medical College at Thomas Jefferson University, Philadelphia, PA
3 Children?s National Health System, Pediatric Residency, Washington, DC, and  4 Drexel University Dornsife School of Public Health, Department of Epidemiology and Biostatistics, Philadelphia, PA;

**Table 1: Univariate analysis by HTNpreg;
**Placental pathology; 
proc freq data = placenta; 
tables HTNpreg*(mom_CHTN mom_PIH Preeclampsia mom_hypertensive mom_MgSO4 Vasc_path VLBW_placental_infarct 
VLBW_placental_calcification VLBW_histologic_chorioamnionitis Chorio_clinical VLBW_placental_fibrin VLBW_placenta_vasculopathy VLBW_placenta_meconium_stain Eclampsia HELLP VLBW_funisitis VLBW_Histologic_Chorio Placenta_previa Chorio_clinical PROM)/chisq fisher; 
run; 
**Neonatal outcomes; 
proc freq data = placenta; 
tables HTNpreg*(Nec Nec_treatment BPD BPD_grade BPDms IVH IVH_grade IVH34 PVLIVH type_discharge death)/chisq fisher; 
run; 
**Mom variables; 
proc freq data = placenta; 
tables HTNpreg*(smokecat Mom_race Mom_diabetes Mom_HTN Preeclampsia Placental_abruption Mom_drugs_any Mom_drugs_heroin Mom_drugs_crackcocaine Mom_drugs_cannabis)/chisq fisher; 
run; 
**Neonatal variables; 
proc freq data = placenta; 
tables HTNpreg*(IUGR Mom_steroids Sex1 delivery_method)/chisq fisher; 
run; 
**Continuous variables; 
proc ttest data = placenta; 
class HTNpreg;  
var fetoplac_rt VLBW_placwt VLBW_placwt_bw_ratio apgar1 apgar5 admission_year mom_age birthweight gestational_age RBC_n platelet_n; 
run; 
proc npar1way wilcoxon data = placenta;
class HTNpreg;
var VLBW_placwt VLBW_placwt_bw_ratio fetoplac_rt admission_year mom_age RBC_n Platelet_n Apgar1 Apgar5 gestational_age birthweight;
run;

**Univariate analysis by BPD;
**Placental pathology; 
proc freq data = placenta; 
tables BPDms*(Vasc_path VLBW_placental_infarct 
VLBW_placental_calcification Chorio_clinical VLBW_placental_fibrin VLBW_placenta_vasculopathy VLBW_placenta_meconium_stain VLBW_funisitis VLBW_Histologic_Chorio Placenta_previa PROM)/chisq fisher; 
run; 
**Neonatal outcomes; 
proc freq data = placenta; 
tables BPDms*(Nec PVLIVH death)/chisq fisher; 
run; 
**Mom variables; 
proc freq data = placenta; 
tables BPDms*(smokecat Mom_race Mom_diabetes HTNpreg Placental_abruption Mom_drugs_any Mom_drugs_heroin Mom_drugs_crackcocaine Mom_drugs_cannabis)/chisq fisher; 
run; 
**Neonatal variables; 
proc freq data = placenta; 
tables BPDms*(IUGR mom_MgSO4 Mom_steroids Sex1 delivery_method)/chisq fisher; 
run; 
**Continuous variables; 
proc ttest data = placenta; 
class BPDms;  
var fetoplac_rt VLBW_placwt VLBW_placwt_bw_ratio apgar1 apgar5 admission_year mom_age birthweight gestational_age RBC_n platelet_n; 
run; 
proc npar1way wilcoxon data = placenta;
class BPDms;
var VLBW_placwt VLBW_placwt_bw_ratio fetoplac_rt admission_year mom_age RBC_n Platelet_n Apgar1 Apgar5 gestational_age birthweight;
run;
 
**Univariate analysis by death;
**Placental pathology; 
proc freq data = placenta; 
tables death*(Vasc_path VLBW_placental_infarct 
VLBW_placental_calcification Chorio_clinical VLBW_placental_fibrin VLBW_placenta_vasculopathy VLBW_placenta_meconium_stain VLBW_funisitis VLBW_Histologic_Chorio Placenta_previa PROM)/chisq fisher; 
run; 
**Neonatal outcomes; 
proc freq data = placenta; 
tables death*(Nec PVLIVH BPDms)/chisq fisher; 
run; 
**Mom variables; 
proc freq data = placenta; 
tables death*(smokecat Mom_race Mom_diabetes HTNpreg Placental_abruption Mom_drugs_any Mom_drugs_heroin Mom_drugs_crackcocaine Mom_drugs_cannabis)/chisq fisher; 
run; 
**Neonatal variables; 
proc freq data = placenta; 
tables death*(IUGR mom_MgSO4 Mom_steroids Sex1 delivery_method)/chisq fisher; 
run; 
**Continuous variables; 
proc ttest data = placenta; 
class death;  
var fetoplac_rt VLBW_placwt VLBW_placwt_bw_ratio apgar1 apgar5 admission_year mom_age birthweight gestational_age RBC_n platelet_n; 
run; 
proc npar1way wilcoxon data = placenta;
class death;
var VLBW_placwt VLBW_placwt_bw_ratio fetoplac_rt admission_year mom_age RBC_n Platelet_n Apgar1 Apgar5 gestational_age birthweight;
run;
 
**Univariate analysis of Nec;
**Placental pathology; 
proc freq data = placenta; 
tables Nec*(Vasc_path VLBW_placental_infarct 
VLBW_placental_calcification Chorio_clinical VLBW_placental_fibrin VLBW_placenta_vasculopathy VLBW_placenta_meconium_stain VLBW_funisitis VLBW_Histologic_Chorio Placenta_previa PROM)/chisq fisher; 
run; 
**Neonatal outcomes; 
proc freq data = placenta; 
tables Nec*(BPDms death PVLIVH)/chisq fisher; 
run; 
**Mom variables; 
proc freq data = placenta; 
tables Nec*(smokecat Mom_race Mom_diabetes HTNpreg Placental_abruption Mom_drugs_any Mom_drugs_heroin Mom_drugs_crackcocaine Mom_drugs_cannabis)/chisq fisher; 
run; 
**Neonatal variables; 
proc freq data = placenta; 
tables Nec*(IUGR mom_MgSO4 Mom_steroids Sex1 delivery_method)/chisq fisher; 
run; 
**Continuous variables; 
proc ttest data = placenta; 
class Nec;  
var fetoplac_rt VLBW_placwt VLBW_placwt_bw_ratio apgar1 apgar5 admission_year mom_age birthweight gestational_age RBC_n platelet_n; 
run; 
proc npar1way wilcoxon data = placenta;
class Nec;
var VLBW_placwt VLBW_placwt_bw_ratio fetoplac_rt admission_year mom_age RBC_n Platelet_n Apgar1 Apgar5 gestational_age birthweight;
run;
 
**Univariate analysis of PVLIVH;
**Placental pathology; 
proc freq data = placenta; 
tables PVLIVH*(Vasc_path VLBW_placental_infarct 
VLBW_placental_calcification Chorio_clinical VLBW_placental_fibrin VLBW_placenta_vasculopathy VLBW_placenta_meconium_stain VLBW_funisitis VLBW_Histologic_Chorio Placenta_previa PROM)/chisq fisher; 
run; 
**Neonatal outcomes; 
proc freq data = placenta; 
tables PVLIVH *(Nec BPDms death)/chisq fisher; 
run; 
**Mom variables; 
proc freq data = placenta; 
tables PVLIVH *(smokecat Mom_race Mom_diabetes HTNpreg Placental_abruption Mom_drugs_any Mom_drugs_heroin Mom_drugs_crackcocaine Mom_drugs_cannabis)/chisq fisher; 
run; 
**Neonatal variables; 
proc freq data = placenta; 
tables PVLIVH *(IUGR mom_MgSO4 Mom_steroids Sex1 delivery_method)/chisq fisher; 
run; 
**Continuous variables; 
proc ttest data = placenta; 
class PVLIVH;  
var fetoplac_rt VLBW_placwt VLBW_placwt_bw_ratio apgar1 apgar5 admission_year mom_age birthweight gestational_age RBC_n platelet_n; 
run; 
proc npar1way wilcoxon data = placenta;
class PVLIVH;
var VLBW_placwt VLBW_placwt_bw_ratio fetoplac_rt admission_year mom_age RBC_n Platelet_n Apgar1 Apgar5 gestational_age birthweight;
run;
 
**Table 2: Final model selection;
**BPD model selection;
proc genmod data = placenta; 
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_MgSo4 mom_steroids sex / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Remove apgar5 and mom_MgSo4; 
proc genmod data = placenta; 
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids sex / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Remove sex; 
proc genmod data = placenta; 
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**FINAL BPD models;
proc genmod data = placenta; 
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

proc genmod data = placenta; 
where vasc_path = 1; 
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
 
proc genmod data = placenta; 
where vasc_path = 0; 
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Wald test on poisson with chorio; 
**zscore = (b2-b1)/(sqrt((b1_se^2) + (b2_se^2)); 

**IVH/PVL model selection; 
proc genmod data = placenta; 
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids mom_MgSO4 apgar5 sex delivery_method/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
**remove delivery method and sex;
proc genmod data = placenta; 
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids mom_MgSO4 apgar5 / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
**remove IUGR; 
proc genmod data = placenta; 
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids mom_MgSO4 apgar5 / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**remove apgar5; 
proc genmod data = placenta; 
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids mom_MgSO4/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**FINAL IVH models; 
proc genmod data = placenta; 
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids mom_MgSo4/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

proc genmod data = placenta; 
where vasc_path = 1; 
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids mom_MgSo4/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run; 
proc genmod data = placenta; 
where vasc_path = 0; 
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids mom_MgSo4/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**NEC model selection; 
**Nec model building;
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_MgSo4 sex mom_steroids 
smokecat placental_abruption delivery_method mom_diabetes / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Remove Smoking; 
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_MgSo4 sex mom_steroids 
placental_abruption delivery_method mom_diabetes / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
**Remove IUGR; 
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio apgar5 mom_MgSo4 sex mom_steroids 
placental_abruption delivery_method mom_diabetes / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
**Remove MgSO4 and delivery method; 
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio apgar5 sex mom_steroids 
placental_abruption mom_diabetes / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Remove apgar5; 
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio sex mom_steroids 
placental_abruption mom_diabetes / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Remove diabetes; 
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio sex mom_steroids 
placental_abruption/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Remove sex; 
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids 
placental_abruption/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Remove placental abruption; 
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

FINAL NEC model; 
proc genmod data = placenta; 
class ID; 
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
proc genmod data = placenta; 
class ID;
where vasc_path = 1;  
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
proc genmod data = placenta; 
class ID;
where vasc_path = 0;  
model nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;


**Death model selection; 
proc genmod data = placenta; 
class ID; 
model death = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_MgSo4 sex mom_steroids smokecat 
placental_abruption delivery_method mom_diabetes/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**remove smoking, diabetes (AIC 417); 
proc genmod data = placenta; 
class ID; 
model death = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_MgSo4 sex mom_steroids 
placental_abruption delivery_method / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**remove sex, placental abruption (AIC 413); 
proc genmod data = placenta; 
class ID; 
model death = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_MgSo4 mom_steroids 
delivery_method / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**remove Mg; 
proc genmod data = placenta; 
class ID; 
model death = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_steroids 
delivery_method / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**FINAL death models; 
proc genmod data = placenta; 
class ID; 
model death = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_steroids delivery_method / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

proc genmod data = placenta; 
where vasc_path = 1; 
class ID; 
model death = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_steroids delivery_method / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run; 

proc genmod data = placenta; 
where vasc_path = 0; 
class ID; 
model death = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio apgar5 mom_steroids delivery_method / dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Sensitivity analysis with death excluded; 
data sens; 
set placenta; 
where death = 0;
run; 

**BPDms; 
proc genmod data = sens; 
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

proc genmod data = sens; 
where vasc_path = 1;
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
proc genmod data = sens; 
where vasc_path = 0;
class ID; 
model BPDms = HTNpreg Admission_year mom_race gestational_age IUGR VLBW_histologic_chorio mom_steroids/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

**Nec;
proc genmod data = sens; 
class ID; 
model Nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

proc genmod data = sens; 
where vasc_path = 1;
class ID; 
model Nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
proc genmod data = sens; 
where vasc_path = 0;
class ID; 
model Nec = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run; 

**IVHPVL; 
proc genmod data = sens; 
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids mom_mgso4/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;

proc genmod data = sens; 
where vasc_path = 1;
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids mom_mgso4/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;
proc genmod data = sens; 
where vasc_path = 0;
class ID; 
model PVLIVH = HTNpreg Admission_year mom_race gestational_age VLBW_histologic_chorio mom_steroids mom_mgso4/ dist=Poisson link = log;
repeated subject = ID/ type = unstr;
 estimate 'Beta' HTNpreg 1 -1/ exp;
run;


