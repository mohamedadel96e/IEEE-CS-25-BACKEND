

-- First Problem :
-- Type of Triangle
-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

-- Equilateral: It's a triangle with 3 sides of equal length.
-- Isosceles: It's a triangle with 2 sides of equal length.
-- Scalene: It's a triangle with 3 sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

SELECT CASE 
    WHEN (A + B <= C) OR (A + C <= B) OR (B + C <= A) THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN (A = B) OR (B = C) OR (A = C) THEN 'Isosceles'
    ELSE 'Scalene'
END 
FROM TRIANGLES;



-- second Problem :
-- The PADS
-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

-- There are a total of [occupation_count] [occupation]s.
-- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

-- Note: There will be at least two entries in the table for each type of occupation.

SELECT CONCAT(NAME, '(', LEFT(Occupation, 1), ')') FROM OCCUPATIONS  ORDER BY NAME;

SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.') 
  FROM OCCUPATIONS 
  GROUP BY Occupation 
ORDER BY COUNT(Occupation), Occupation;


-- third Problem :
-- New Companies
--  write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

SELECT Company.company_code, Company.founder, 
  COUNT(DISTINCT Lead_Manager.lead_manager_code), 
  COUNT(DISTINCT Senior_Manager.senior_manager_code), 
  COUNT(DISTINCT Manager.manager_code), 
  COUNT(DISTINCT Employee.employee_code)
FROM Company
LEFT JOIN Lead_Manager ON Company.company_code = Lead_Manager.company_code
LEFT JOIN Senior_Manager ON Company.company_code = Senior_Manager.company_code
LEFT JOIN Manager ON Company.company_code = Manager.company_code
LEFT JOIN Employee ON Company.company_code = Employee.company_code
GROUP BY company_code, founder
ORDER BY company_code;



-- fourth Problem :
-- SQL Project Planning
--Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.

SELECT A.Start_Date, MIN(B.End_Date)
FROM 
(
  SELECT Start_Date 
  FROM Projects 
  WHERE Start_Date NOT IN (SELECT End_Date FROM Projects) 
) AS A
INNER JOIN 
(
  SELECT End_Date 
  FROM Projects 
  WHERE END_Date  NOT IN (SELECT Start_Date from Projects)
) AS B
WHERE A.Start_Date < B.End_Date
GROUP BY A.Start_Date
ORDER BY MIN(B.End_Date) - A.Start_Date , A.Start_Date;





-- fifth Problem :
-- Average Population
--Query the average population for all cities in CITY, rounded down to the nearest integer.

SELECT FLOOR(AVG(POPULATION)) FROM CITY;


-- sixth Problem :
-- Ollivander's Inventory
-- Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

SELECT id, age, coins_needed, power 
FROM Wands w
JOIN Wands_Property p ON w.code = p.code
WHERE is_evil = 0 AND coins_needed  = (
    SELECT MIN(coins_needed) 
    FROM Wands A 
    JOIN Wands_Property B
    ON A.code = B.code
    WHERE w.power = a.power AND p.age = B.age
)
ORDER BY power desc, age desc;


-- seventh Problem :
-- The Report
SELECT IF(GRADES.GRADE>=8, STUDENTS.NAME, NULL), GRADES.GRADE, STUDENTS.MARKS
FROM Students
JOIN Grades ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark


ORDER BY Grades.Grade DESC, Students.Name;

-- eighth Problem :
-- Symmetric Pairs
SELECT X, Y FROM Functions f1
WHERE EXISTS (SELECT * FROM Functions f2 WHERE f2.X = f1.Y AND f2.Y = f1.X AND f2.X > f1.X) AND (X != Y)

UNION 
SELECT X, Y FROM Functions f1 
WHERE X = Y AND ((SELECT Count(*) FROM Functions f2 WHERE X = f1.X AND Y = f1.X ) > 1)
ORDER BY X;



-- ninth Problem :
-- Weather Observation Station 15
SELECT ROUND(LONG_W,4)
FROM STATION 
WHERE LAT_N = (
    SELECT MAX(LAT_N) FROM STATION 
    WHERE LAT_N < 137.2345
);


-- 10th Problem :
-- Placements
SELECT Name FROM Students s
JOIN Friends f ON f.ID = s.ID
JOIN Packages p_friend ON p_friend.ID = f.Friend_ID
JOIN Packages p_self ON p_self.ID = s.ID
WHERE p_friend.Salary > p_self.Salary
ORDER BY p_friend.Salary;


-- 11th Problem :
-- Interviews

/* 
  Contests(contest_id,hacker_id, name(of the hacker))
Colleges(college_id, contest_id)
Challenges(challenge_id, college_id)
View_Stats(challenge_id, total_views, total_unique_views)
Submission_Stats(challenge_id, total_submissions, total_accepted_submissions)

Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, 
total_views, and total_unique_views for each contest sorted by contest_id.  (Exclude the contest from the result if all 
four sums are 0.)
college many -> one screening
 */

SELECT A.Contest_ID, A.Hacker_ID, A.NAME, 
    SUM(Total_Submissions) AS TOTAL_SUBMISSIONS,
    SUM(Total_Accepted_submissions) AS TOTAL_ACCEPTED_SUBMISSIONS,
    SUM(Total_Views) AS TOTAL_VIEWS,
    SUM(Total_Unique_Views) AS TOTAL_UNIQUE_VIEWS
FROM Contests AS A
LEFT JOIN Colleges AS B
    ON A.Contest_ID = B.Contest_ID
LEFT JOIN Challenges AS C
    ON B.College_ID = C.College_ID
LEFT JOIN (
    SELECT Challenge_ID, SUM(Total_Views) AS Total_Views, SUM(Total_Unique_Views) AS Total_Unique_Views
    FROM View_Stats
    GROUP BY Challenge_ID
) AS D
    ON C.Challenge_ID = D.Challenge_ID
LEFT JOIN (
    SELECT Challenge_ID, SUM(Total_Submissions) AS Total_Submissions, SUM(Total_Accepted_submissions) AS Total_Accepted_submissions
    FROM Submission_Stats
    GROUP BY Challenge_ID
) AS E

ON C.Challenge_ID = E.Challenge_ID
GROUP BY A.Contest_ID, A.Hacker_ID, A.NAME
HAVING SUM(Total_Submissions) + SUM(Total_Accepted_submissions) + SUM(Total_Views) + SUM(Total_Unique_Views) > 0
ORDER BY A.Contest_ID;
