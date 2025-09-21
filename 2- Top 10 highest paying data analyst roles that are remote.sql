
--Top 10 highest paying data analyst roles that are remote 

SELECT TOP 10
	J.job_title,
	j.job_title_short,
	J.job_location,
	J.job_country,
	J.salary_year_avg,
	C.name AS Company_name
FROM job_postings_fact J 
JOIN company_dim C
ON J.company_id = C.company_id
WHERE J.salary_year_avg IS NOT NULL
AND J.job_title_short = 'Data Analyst'
and j.job_location = 'Anywhere'
ORDER BY J.salary_year_avg DESC ;

