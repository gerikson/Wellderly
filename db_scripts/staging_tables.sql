CREATE TABLE staging.sg_advisor
(
  haplotype character varying,
  chromosome character varying,
  begin_pos character varying,
  end_pos character varying,
  vartype character varying,
  reference character varying,
  allele character varying,
  notes character varying,
  gene character varying,
  gene_type character varying,
  location character varying,
  distance character varying,
  coding_impact character varying,
  protein_pos character varying,
  original_aa character varying,
  allele_aa character varying,
  start_stop_dist character varying,
  prop_cons_affected_upstream character varying,
  prop_cons_affected_downstream character varying,
  trunc_prediction character varying,
  conserved46way character varying,
  conserved46wayplacental character varying,
  conserved46wayprimates character varying,
  asw_minallele character varying,
  ceu_minallele character varying,
  chb_minallele character varying,
  chd_minallele character varying,
  gih_minallele character varying,
  jpt_minallele character varying,
  lwk_minallele character varying,
  mex_minallele character varying,
  mkk_minallele character varying,
  tsi_minallele character varying,
  yri_minallele character varying,
  genomes_af character varying,
  wellderly_af325 character varying,
  nhlbi character varying,
  eqtl_genes character varying,
  mirna_bs_influenced character varying,
  mirna_bs_impact character varying,
  mirna_bs_direct character varying,
  mirna_bs_deltag character varying,
  mirna_genomic character varying,
  mirna_folding_deltag character varying,
  mirna_binding_deltag character varying,
  mirna_top_targets_changed character varying,
  splice_site_pred character varying,
  splicing_predictionmaxent character varying,
  ese_sites character varying,
  ess_sites character varying,
  protein_impact_predictionpolyphen character varying,
  protein_impact_probabilitypolyphen character varying,
  protein_impact_predictionsift character varying,
  protein_impact_scoresift character varying,
  protein_domains character varying,
  protein_domains_impactlogre character varying,
  protein_impact_predictioncondel character varying,
  protein_impact_probabilitycondel character varying,
  tf_binding_sites character varying,
  tfbs_deltas character varying,
  omimgene_id_omimgene_association character varying,
  protein_domain_gene_ontology character varying,
  dbsnp_id character varying,
  hgmd_variant_pubmedid character varying,
  hgmd_gene_disease_association character varying,
  genetic_association_database_pubmedid character varying,
  pharmgkb_database_drug character varying,
  inheritance_penetrance character varying,
  severity_treatability character varying,
  cosmic_variant_numsamples character varying,
  cosmic_gene_numsamples character varying,
  mskcc_cancergenes character varying,
  atlas_oncology character varying,
  sanger_cancergenes character varying,
  sanger_germline_cancergenes character varying,
  sanger_network_informed_cancergenes_pval character varying,
  segdup_region character varying,
  gene_symbol character varying,
  drugbank character varying,
  reactome_pathway character varying,
  gene_onotology character varying,
  disease_ontology character varying,
  acmg_score_clinical_disease_entry_explanation character varying,
  acmg_score_research_disease_entry_explanation character varying
)
WITH (
  OIDS=FALSE
);
ALTER TABLE staging.sg_advisor
  OWNER TO postgres;


-- Table: staging.demographics

-- DROP TABLE staging.demographics;

CREATE TABLE staging.demographics
(
patient_id	 character varying,
sample_type	 character varying,
eligibility	 character varying,
elig_comm	 character varying,
enroll_dt	 character varying,
gender	 character varying,
birth_dt	 character varying,
height_ft	 character varying,
height_in	 character varying,
height_cm	 character varying,
weight_lbs	 character varying,
weight_kg	 character varying,
race___1	 character varying,
race___2	 character varying,
race___4	 character varying,
race___5	 character varying,
race___6	 character varying,
race___7	 character varying,
race___3	 character varying,
hisp_ethnicity	 character varying,
other_race_ethn	 character varying,
origin_mat_grmother	 character varying,
origin_mat_grfather	 character varying,
origin_pat_grmother	 character varying,
origin_pat_grfather	 character varying,
mother_age_alive	 character varying,
mother_age_death	 character varying,
mother_cause_death	 character varying,
father_age_alive	 character varying,
father_age_death	 character varying,
father_cause_death	 character varying,
have_siblings	 character varying,
sib1_gender	 character varying,
sib1_age_alive	 character varying,
sib1_age_death	 character varying,
sib1_cause_death	 character varying,
sib2_gender	 character varying,
sib2_age_alive	 character varying,
sib2_age_death	 character varying,
sib2_cause_death	 character varying,
sib3_gender	 character varying,
sib3_age_alive	 character varying,
sib3_age_death	 character varying,
sib3_cause_death	 character varying,
sib4_gender	 character varying,
sib4_age_alive	 character varying,
sib4_age_death	 character varying,
sib4_cause_death	 character varying,
sib5_gender	 character varying,
sib5_age_alive	 character varying,
sib5_age_death	 character varying,
sib5_cause_death	 character varying,
sib6_gender	 character varying,
sib6_age_alive	 character varying,
sib6_age_death	 character varying,
sib6_cause_death	 character varying,
sib7_gender	 character varying,
sib7_age_alive	 character varying,
sib7_age_death	 character varying,
sib7_cause_death	 character varying,
sib8_gender	 character varying,
sib8_age_alive	 character varying,
sib8_age_death	 character varying,
sib8_cause_death	 character varying,
sib9_gender	 character varying,
sib9_age_alive	 character varying,
sib9_age_death	 character varying,
sib9_cause_death	 character varying,
sib10_gender	 character varying,
sib10_age_alive	 character varying,
sib10_age_death	 character varying,
sib10_cause_death	 character varying,
sib11_gender	 character varying,
sib11_age_alive	 character varying,
sib11_age_death	 character varying,
sib11_cause_death	 character varying,
sib12_gender	 character varying,
sib12_age_alive	 character varying,
sib12_age_death	 character varying,
sib12_cause_death	 character varying,
sib13_gender	 character varying,
sib13_age_alive	 character varying,
sib13_age_death	 character varying,
sib13_cause_death	 character varying,
sib14_gender	 character varying,
sib14_age_alive	 character varying,
sib14_age_death	 character varying,
sib14_cause_death	 character varying,
sib15_gender	 character varying,
sib15_age_alive	 character varying,
sib15_age_death	 character varying,
sib15_cause_death	 character varying,
smoking_hist	 character varying,
curr_pk_yrs	 character varying,
former_pk_yrs	 character varying,
curr_alcohol	 character varying,
drinks_wk	 character varying,
exercise_3x	 character varying,
highest_educ	 character varying,
reqs_assist	 character varying,
assistance___1	 character varying,
assistance___2	 character varying,
assistance___3	 character varying,
assistance___4	 character varying,
assistance___5	 character varying,
take_meds	 character varying,
depr_anx	 character varying,
depr_meds___1	 character varying,
depr_meds___2	 character varying,
depr_meds___3	 character varying,
depr_meds___4	 character varying,
osteopor	 character varying,
osteopor_meds___1	 character varying,
osteopor_meds___2	 character varying,
osteopor_meds___3	 character varying,
hrt	 character varying,
hrt_meds___1	 character varying,
hrt_meds___2	 character varying,
hrt_meds___3	 character varying,
hrt_meds___4	 character varying,
hrt_meds___5	 character varying,
gerd	 character varying,
gerd_meds___1	 character varying,
gerd_meds___2	 character varying,
gerd_meds___3	 character varying,
gerd_meds___4	 character varying,
bph	 character varying,
bph_meds___1	 character varying,
bph_meds___2	 character varying,
bph_meds___3	 character varying,
bph_meds___4	 character varying,
osteoarth	 character varying,
osteoarth_meds___1	 character varying,
osteoarth_meds___2	 character varying,
osteoarth_meds___3	 character varying,
osteoarth_meds___4	 character varying,
hypothy	 character varying,
hypothy_meds___1	 character varying,
hypothy_meds___2	 character varying,
hypothy_meds___3	 character varying,
hyperten	 character varying,
hyperten_meds___1	 character varying,
hyperten_meds___2	 character varying,
hyperten_meds___3	 character varying,
hyperten_meds___4	 character varying,
hyperten_meds___5	 character varying,
hyperten_meds___6	 character varying,
hyperten_meds___7	 character varying,
hyperten_meds___8	 character varying,
dyslipid	 character varying,
dyslipid_meds___1	 character varying,
dyslipid_meds___2	 character varying,
dyslipid_meds___3	 character varying,
dyslipid_meds___4	 character varying,
dyslipid_meds___5	 character varying,
blad_con	 character varying,
blad_con_meds___1	 character varying,
blad_con_meds___2	 character varying,
blad_con_meds___3	 character varying,
copd_asthma	 character varying,
copd_ast_meds___1	 character varying,
copd_ast_meds___2	 character varying,
copd_ast_meds___3	 character varying,
copd_ast_meds___4	 character varying,
glaucoma	 character varying,
glaucoma_meds___1	 character varying,
glaucoma_meds___2	 character varying,
glaucoma_meds___3	 character varying,
glaucoma_meds___4	 character varying,
macular_degen	 character varying,
mac_degen_meds___1	 character varying,
mac_degen_meds___2	 character varying,
mac_degen_meds___3	 character varying,
mac_degen_meds___4	 character varying,
mac_degen_meds___5	 character varying,
mac_degen_other_descr	 character varying,
oth_med_cond_comment	 character varying,
med_hist_comment	 character varying,
last_hist_phys	 character varying,
gene_bk_related	 character varying,
gene_bk_rel1	 character varying,
gene_bk_rel1_id	 character varying,
gene_bk_rel2	 character varying,
gene_bk_rel2_id	 character varying,
gene_bk_rel3	 character varying,
gene_bk_rel3_id	 character varying,
gene_bk_rel4	 character varying,
gene_bk_rel4_id	 character varying)
WITH (
  OIDS=FALSE
);
ALTER TABLE staging.demographics
  OWNER TO postgres;
  
create table demographfics (
patient_id	character varying,
sample_type	integer,
eligibility	integer,
elig_comm	integer,
enroll_dt	date,
gender	integer,
birth_dt	date,
height_ft	integer,
height_in	integer,
height_cm	integer,
weight_lbs	integer,
weight_kg	integer,
origin_mat_grmother	character varying,
origin_mat_grfather	character varying,
origin_pat_grmother	character varying,
process_id	character varying,
load_date	date)

ALTER TABLE staging.sg_advisor ALTER COLUMN ACMG_Score_Clinical_Disease_Entry_Explanation  DROP NOT NULL;


create table staging.variant_quality(
locus	character varying,
ploidy	character varying,	
allele	character varying,	
chromosome	character varying,	
begin_pos	character varying,	
end_pos	character varying,
varType	character varying,	
reference	character varying,	
alleleSeq	character varying,	
varScoreVAF	character varying,	
varScoreEAF	character varying,	
varQuality	character varying,	
hapLink	character varying,	
xRef	character varying)



