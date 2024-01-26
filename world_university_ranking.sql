CREATE DATABASE university_world_ranking;

USE university_world_ranking;

CREATE TABLE IF NOT EXISTS university_rankings ( 
  rank_Id INT,
  Name varchar(100),
  Country varchar(50),
  Student_Population INT,
  Student_to_Staff_Ratio decimal(3,1),
  International_Students varchar(10),
  Gender_Ratio varchar(20),
  Overall_Score decimal(4,1),
  Teaching decimal(4,1), 
  Research_Environment decimal(4,1),
  Research_Quality decimal(4,1),
  Industry_Impact decimal(4,1),
  International_Outlook int,
  Year int
);

SELECT *
FROM university_rankings;

------------------------------------------------------------------------
----------------------------------- Questions----------------------------
-------------------------------------------------------------------------

-- Which university has the highest overall score in 2024?

SELECT Name, Overall_Score, Year 
FROM university_rankings
WHERE Year = 2024
ORDER BY Overall_Score DESC
LIMIT 1;

-- Top 5 countries has the most universities in the top 20 rankings in 2022

SELECT Country, COUNT(*) AS num_universities 
FROM university_rankings
WHERE Year = 2022 AND rank_Id <= 20
GROUP BY Country
ORDER BY num_universities DESC
LIMIT 5;

-- What is the average teaching score of universities in the United Kingdom between 2016 and 2024?

SELECT name, AVG(teaching) AS Avg_teaching_score
FROM university_rankings
WHERE Country = 'United Kingdom' AND Year BETWEEN 2016 AND 2024
GROUP BY name
ORDER BY AVG(teaching) DESC;

-- Which universities have over 30% international students every year between 2016 and 2024?

SELECT name, International_Students
FROM university_rankings
WHERE International_Students > 30 AND year BETWEEN 2016 AND 2024
ORDER BY International_Students DESC;

-- Show the change in female to male ratio at Harvard University BETWEEN 2019 AND 2024

SELECT name, Gender_Ratio, year
FROM university_rankings
WHERE name = 'Harvard University' AND year BETWEEN 2019 AND 2024
ORDER BY year;

-- Which university has the lowest student to staff ratio in 2020?

SELECT name, Student_to_Staff_Ratio
FROM university_rankings
WHERE year = 2020
ORDER BY Student_to_Staff_Ratio
LIMIT 1;

-- Universities that have a higher than 40% ratio of international students every year.

SELECT name, International_Students
FROM university_rankings
WHERE International_Students > 40
ORDER BY International_Students;

-- Which country has the most universities ranked in the top 100 in 2022?

SELECT country, COUNT(name) AS Universities
FROM university_rankings
WHERE year = 2022
GROUP BY country
ORDER BY Universities DESC
LIMIT 10;

-- Which country has the most universities ranked in the top 100?

SELECT Name, Industry_Impact
FROM university_rankings
ORDER BY Industry_Impact DESC
LIMIT 1;

-- Universities that were in the top 20 rankings for 5 or more years

SELECT Name, COUNT(DISTINCT Year) AS years_in_top_20
FROM university_rankings
WHERE rank_id >= 20
GROUP BY Name 
HAVING COUNT(DISTINCT Year) >= 5
ORDER BY years_in_top_20 DESC;

-- Which universities have consistently highly ranked teaching quality? 

SELECT Name, Teaching AS Teaching_Score, Year
FROM university_rankings
WHERE Teaching > 90
ORDER BY Teaching DESC;

--  Which universities have higher than 90% Teaching score in multiple years?
SELECT Name, Teaching AS Teaching_Score, COUNT(Year) 
FROM university_rankings
WHERE Teaching > 90
GROUP BY Name, Teaching
HAVING COUNT(Year) > 1
ORDER BY Teaching DESC;

-- Which countries have the most top 100 ranked universities on average?
SELECT Country, ROUND(AVG(Rank_id),0) AS Average_Ranking  
FROM university_rankings
WHERE Rank_id <= 100
GROUP BY Country
ORDER BY Average_Ranking DESC;

-- What is the best student-to-faculty ratio by university tier?
SELECT Name, Student_to_Staff_Ratio, 
   CASE
     WHEN Rank_id <= 10 THEN 'Top 10'
     WHEN Rank_id <= 20 THEN 'Top 20'  
     WHEN Rank_id <= 50 THEN 'Top 50'
     ELSE 'Below Top 50'
   END AS University_Tier
FROM university_rankings
ORDER BY University_Tier, Student_to_Staff_Ratio DESC;

-- Which universities reached top 100 status in 2024 but were unranked in 2016?
SELECT Name
FROM university_rankings
WHERE Rank_id <= 100 AND year = 2024
  AND Name NOT IN
    (SELECT DISTINCT Name 
     FROM university_rankings
     WHERE year = 2016);
     
-- Which countries have the most universities with high industry impact?
SELECT Country, COUNT(name) num_high_industry 
FROM university_rankings
WHERE Industry_Impact > 80 AND Year = 2022
GROUP BY country
ORDER BY num_high_industry DESC;