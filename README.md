# World University Rankings 2016-2024 Project
## About
There are thousands (if not hundreds of thousands) of institutions of higher learning around the world that admit new students every year. Prospective students are therefore usually tasked with researching the best institutions that suit their learning preferences before making their application. The easiest way is usually to see how a university of interest ranks globally (or in its native country) and then comparing it with another university. A more detailed approach would be to compare universities not on their rankings alone but also on metrics such as research environment, teaching standards, hospitability to foreign students, and industry income among others.
## Aim
This project aims to empower prospective students to make data-driven decisions on which universities best fit their academic, financial, social and career ambitions by enabling in-depth analysis and comparison across institutions worldwide based on a wide set of ranked metrics and qualitative data.
# Analysis List

## Stage A - Raw Data Collection
1. Obtain university ranking datasets from [https://www.kaggle.com/datasets/raymondtoo/the-world-university-rankings-2016-2024](url)
2. Compile supplemental data on university characteristics e.g. location, enrollment
3. Inventory all collected variables by data source as preparation
   
## Stage B - Data Cleaning & Conforming
1. Standardize naming for universities referred to differently
2. Resolve discrepancies via cross-validation between sources
3. Impute or filter out missing values appropriately
4. Ensure ranking methodology changes don't skew longitudinal comparisons
5. Conform all data into consistent SQL schema

## Stage C - Database Development
1. Model multi-table SQL database integrating all data above
2. Incorporate narratives, statistics, examples on each university
3. Develop constraints, documentation for ease of querying

## Stage D - Visualization
1. Build user-friendly dashboard with Power BI
2. Enable customized querying and comparisons between universities
3. Personalized recommendations to suggest best fit options
4. Ongoing analysis: trends, projections, similar alternatives

# Questions To Answer
1. Which university has the highest overall score in 2024?
2. Top 5 countries has the most universities in the top 20 rankings in 2022
3. What is the average teaching score of universities in the United Kingdom between 2016 and 2024?
4. Which universities have over 30% international students every year between 2016 and 2024?
5. Show the change in female to male ratio at Harvard University BETWEEN 2019 AND 2024
6. Which university has the lowest student to staff ratio in 2020?
7. Universities that have a higher than 40% ratio of international students every year.
8. Which country has the most universities ranked in the top 100 in 2022?
9. Which country has the most universities ranked in the top 100?
10. Universities that were in the top 20 rankings for 5 or more years
11. Which universities have consistently highly ranked teaching quality?
12. Which universities have higher than 90% Teaching score in multiple years?
13. Which countries have the most top 100 ranked universities on average?
14. What is the best student-to-faculty ratio by university tier?
15. Which universities reached top 100 status in 2024 but were unranked in 2016?
16. Which countries have the most universities with high industry impact?
