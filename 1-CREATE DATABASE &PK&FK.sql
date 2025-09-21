CREATE DATABASE SQL_DATA_JOB_ANALYSIS ;
--  1-Add a database  
--  2-Load the tabels   

                
				-- PRIMARY KEY

-- company_dim
ALTER TABLE company_dim
ADD CONSTRAINT PK_company_dim PRIMARY KEY (company_id);

-- skills_dim
ALTER TABLE skills_dim
ADD CONSTRAINT PK_skills_dim PRIMARY KEY (skill_id);

-- job_postings_fact
ALTER TABLE job_postings_fact
ADD CONSTRAINT PK_job_postings_fact PRIMARY KEY (job_id);

-- skills_job_dim
ALTER TABLE skills_job_dim
ADD CONSTRAINT PK_skill_job PRIMARY KEY (job_id, skill_id);


                              --FORIEN KEY

ALTER TABLE job_postings_fact
ADD CONSTRAINT FK_job_company
FOREIGN KEY (company_id) REFERENCES company_dim(company_id);

ALTER TABLE skills_job_dim
ADD CONSTRAINT FK_job_skill_job
FOREIGN KEY (job_id) REFERENCES job_postings_fact(job_id);

ALTER TABLE skills_job_dim
ADD CONSTRAINT FK_skill_skill_job
FOREIGN KEY (skill_id) REFERENCES skills_dim(skill_id);



SELECT * FROM job_postings_fact;
