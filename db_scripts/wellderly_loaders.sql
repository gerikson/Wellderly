drop table gene.SNP_ANNOTATED

CREATE
	TABLE GENE.SNP_ANNOTATED( PATIENT_ID VARCHAR,
	DBSNPID VARCHAR,
	ALLELES VARCHAR,
	CHROMOSOME VARCHAR,
	BEGIN_POS INTEGER,
	END_POS INTEGER,
	REFERENCE VARCHAR,
	ALLELEAGENOTYPE VARCHAR,
	ALLELEBGENOTYPE VARCHAR,
	LOCI varchar,
	ZYGOSITY VARCHAR,
	VARTYPEA VARCHAR,
	HAPA VARCHAR,
	VARSCOREVAFA integer,
	VARSCOREEAFA integer,
	CHROMOSOMEA VARCHAR,
	BEGINA INTEGER,
	ENDA INTEGER,
	VARTYPEB VARCHAR,
	HAPB VARCHAR,
	VARSCOREVAFB integer,
	VARSCOREEAFB integer,
	CHROMOSOMEB VARCHAR,
	BEGINB INTEGER,
	ENDB INTEGER,
	GENOMESPROJECTMINORALLELE VARCHAR,
	GENOMESPROJECTMAF number,
	LOADED_BY VARCHAR,
	LOAD_DATE DATE)

copy gene.snp_annotated (DBSNPID, ALLELES,CHROMOSOME,BEGIN_POS,END_POS,REFERENCE,ALLELEAGENOTYPE,ALLELEBGENOTYPE,LOCI,ZYGOSITY,VARTYPEA,HAPA,VARSCOREVAFA,VARSCOREEAFA,CHROMOSOMEA,BEGINA,ENDA,
	VARTYPEB,HAPB,VARSCOREVAFB,VARSCOREEAFB,CHROMOSOMEB,BEGINB,ENDB,GENOMESPROJECTMINORALLELE,GENOMESPROJECTMAF)
from '/tmp/GS000015729-DID/GS000015115-ASM/GS01057-DNA_C01/ASM/dbSNPAnnotated-GS000015115-ASM.tsv' delimiter E'\t' enclosed by '"' record terminator E'\n' skip 12 rejected data '/tmp/rejected_data' exceptions '/tmp/exceptions' trailing nullcols direct;

update gene.snp_annotated set patient_id =  'HE00426', loaded_by = 'ETL Process', load_date = '15-Apr-2014' where patient_id is null

select * from gene.snp_annotated limit 100


drop table gene.coverage

create table gene.coverage(patient_id varchar,
chromosome  varchar,
offset_cov  number,
refScore    integer,	
uniqueSequenceCoverage integer,	
weightSumSequenceCoverage   integer,	
gcCorrectedCoverage     varchar, 
grossWeightSumSequenceCoverage  integer,
loaded_by varchar,
load_date date)

copy gene.coverage (offset_cov,refScore, uniqueSequenceCoverage,	weightSumSequenceCoverage,	gcCorrectedCoverage, grossWeightSumSequenceCoverage) 
from '/tmp/REF/coverageRefScore-chr18-GS000015115-ASM.tsv.bz2' BZIP
delimiter E'\t' enclosed by '"' record terminator E'\n' skip 9 rejected data '/tmp/rejected_data' exceptions '/tmp/exceptions' trailing nullcols direct;

update gene.coverage set chromosome = 'chr19', patient_id = 'HE00426', loaded_by = 'ETL Process', load_date = '15-Apr-2014' where patient_id is null

drop table gene.segments_diploid_beta

create table gene.segments_diploid_beta (patient_id varchar,
chr varchar,
begin_pos integer,
end_pos integer,
avgNormalizedCvg    number,
relativeCvg number,
calledPloidy varchar,	
calledCNVType   varchar,
ploidyScore integer,	
CNVTypeScore	integer,
overlappingGene varchar,	
knownCNV varchar,
repeats integer,
loaded_by varchar,
load_date   date)

copy gene.segments_diploid_beta (chr,begin_pos,end_pos,avgNormalizedCvg,relativeCvg,calledPloidy,	calledCNVType, ploidyScore,	CNVTypeScore,overlappingGene,repeats)
from '/tmp/GS000015729-DID/GS000015115-ASM/GS01057-DNA_C01/ASM/CNV/cnvSegmentsDiploidBeta-GS000015115-ASM.tsv' 
delimiter E'\t' enclosed by '"' record terminator E'\n' skip 14 rejected data '/tmp/rejected_data' exceptions '/tmp/exceptions' trailing nullcols direct;

select * from gene.segments_diploid_beta

update gene.segments_diploid_beta set patient_id = 'HE00426', loaded_by = 'ETL Process', load_date = '15-Apr-2014' where patient_id is null

create table gene.segments_nondiploid_beta (patient_id varchar,
chr varchar,
begin_pos integer,	
end_pos integer,
avgNormalizedCvg    number,	
relativeCvg number,
calledLevel	number,
calledCNVType   varchar,	
levelScore  number,	
CNVTypeScor varchar,
loaded_by varchar,
load_date date);

copy gene.segments_nondiploid_beta (chr,begin_pos,end_pos,avgNormalizedCvg,relativeCvg,calledLevel,calledCNVType,	levelScore,	CNVTypeScor)
from '/tmp/GS000015729-DID/GS000015115-ASM/GS01057-DNA_C01/ASM/CNV/cnvSegmentsNondiploidBeta-GS000015115-ASM.tsv' 
delimiter E'\t' enclosed by '"' record terminator E'\n' skip 18 rejected data '/tmp/rejected_data' exceptions '/tmp/exceptions' trailing nullcols direct;

select * from gene.segments_nondiploid_beta

update gene.segments_nondiploid_beta set patient_id = 'HE00426', loaded_by = 'ETL Process', load_date = '15-Apr-2014' where patient_id is null


create table gene.depth_of_coverage(patient_id  varchar,
chromosome  varchar,	
begin_pos   integer,	
end_pos    integer,	
uniqueSequenceCoverage	number,
weightSumSequenceCoverage	number,
gcCorrectedCvg	number,
avgNormalizedCoverage   number,
loaded_by   varchar,
load_date   date)

copy gene.depth_of_coverage(chromosome,	begin_pos,	end_pos,	uniqueSequenceCoverage,	weightSumSequenceCoverage,	gcCorrectedCvg,	avgNormalizedCoverage)
from '/tmp/GS000015729-DID/GS000015115-ASM/GS01057-DNA_C01/ASM/CNV/depthOfCoverage_100000-GS000015115-ASM.tsv' 
delimiter E'\t' enclosed by '"' record terminator E'\n' skip 11 rejected data '/tmp/rejected_data' exceptions '/tmp/exceptions' trailing nullcols direct;

select * from gene.depth_of_coverage

update gene.depth_of_coverage set patient_id = 'HE00426', loaded_by = 'ETL Process', load_date = '15-Apr-2014' where patient_id is null

drop table gene.diploid_beta_detail

create table gene.diploid_beta_detail(patient_id   varchar,
chr	varchar,
begin_pos	integer,
end_pos integer,	
avgNormalizedCvg	varchar, 
gcCorrectedCvg	varchar,
fractionUnique	number,
relativeCvg	varchar,
calledPloidy	varchar, 
calledCNVType	varchar,
ploidyScore	integer,
CNVTypeScore varchar,
loaded_by   varchar,
load_date   date);

copy gene.diploid_beta_detail(chr,	begin_pos,	end_pos,	avgNormalizedCvg,	gcCorrectedCvg,	fractionUnique,	relativeCvg,	calledPloidy,	calledCNVType,	ploidyScore,	CNVTypeScore)
from '/tmp/GS000015729-DID/GS000015115-ASM/GS01057-DNA_C01/ASM/CNV/cnvDetailsDiploidBeta-GS000015115-ASM.tsv' 
delimiter E'\t' enclosed by '"' record terminator E'\n' skip 12 rejected data '/tmp/rejected_data' exceptions '/tmp/exceptions' trailing nullcols direct;

update gene.diploid_beta_detail set patient_id = 'HE00426', loaded_by = 'ETL Process', load_date = '15-Apr-2014' where patient_id is null

delete from gene.diploid_beta_detail

drop table gene.nondiploid_beta_detail

create table gene.nondiploid_beta_detail(patient_id   varchar,
chr	varchar,
begin_pos	integer,
end_pos integer,	
avgNormalizedCvg	number, 
gcCorrectedCvg	number,
fractionUnique	number,
relativeCvg	number,
calledLevel	varchar, 
calledCNVType	varchar,
levelScore	integer,
CNVTypeScore varchar,
loaded_by   varchar,
load_date   date);

copy gene.nondiploid_beta_detail(chr,	begin_pos,	end_pos,	avgNormalizedCvg,	gcCorrectedCvg,	fractionUnique,	relativeCvg,	calledLevel,	calledCNVType,	levelScore,	CNVTypeScore)
from '/tmp/GS000015729-DID/GS000015115-ASM/GS01057-DNA_C01/ASM/CNV/cnvDetailsNondiploidBeta-GS000015115-ASM.tsv' 
delimiter E'\t' enclosed by '"' record terminator E'\n' skip 18 rejected data '/tmp/rejected_data' exceptions '/tmp/exceptions' trailing nullcols direct;


update gene.nondiploid_beta_detail set patient_id = 'HE00426', loaded_by = 'ETL Process', load_date = '15-Apr-2014' where patient_id is null

select count(*), chromosome from gene.coverage group by chromosome

select * from sessions;

select close_session('bigonc.sdsc.edu-8073:0x55109');

drop table gene.subject_did_map cascade

alter table gene.variant_quality partition by patient_id reorganize

alter table gene.coverage partition by patient_id reorganize

select count(*) from gene.coverage where patient_id is not null --2754393777

SELECT * FROM disk_storage WHERE storage_usage ILIKE '%data%' AND disk_space_free_mb/(disk_space_free_mb+disk_space_used_mb) <= 0.45;