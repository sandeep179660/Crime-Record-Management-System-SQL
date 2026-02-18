-- ==========================================================
-- CRIME RECORD MANAGEMENT SYSTEM
-- EASY LEVEL QUERIES WITH CORRECT OUTPUT (NEAT ALIGNMENT)
-- ==========================================================


-- 1. Display all police stations
SELECT * FROM Police_Station;

-- Output:
-- +------------+-----------------+-----------+
-- | station_id | station_name    | location  |
-- +------------+-----------------+-----------+
-- | 1          | Central PS      | Chennai   |
-- | 2          | North PS        | Bangalore |
-- | 3          | South PS        | Delhi     |
-- | 4          | Cyber Crime PS  | Hyderabad |
-- | 5          | Traffic PS      | Mumbai    |
-- +------------+-----------------+-----------+



-- 2. Show all officers
SELECT * FROM Officer;

-- Output:
-- +------------+--------------+-----------+------------+
-- | officer_id | officer_name | rank_name | station_id |
-- +------------+--------------+-----------+------------+
-- | 1          | Anil         | SI        | 3          |
-- | 2          | Prakash      | CI        | 4          |
-- | 3          | Vijay        | ASI       | 5          |
-- | 4          | Mahesh       | SI        | 2          |
-- | 5          | Kavitha      | CI        | 3          |
-- | 6          | Ravi         | DSP       | 2          |
-- | 7          | Sneha        | SI        | 1          |
-- | 8          | Arjun        | ASI       | 4          |
-- +------------+--------------+-----------+------------+



-- 3. Show all criminals
SELECT * FROM Criminal;

-- Output:
-- +-------------+--------+-----+--------+------------------+
-- | criminal_id | name   | age | gender | crime_type       |
-- +-------------+--------+-----+--------+------------------+
-- | 1           | Rohit  | 22  | Male   | Robbery          |
-- | 2           | Amit   | 35  | Male   | Fraud            |
-- | 3           | Sita   | 28  | Female | Kidnapping       |
-- | 4           | John   | 40  | Male   | Cyber Crime      |
-- | 5           | David  | 32  | Male   | Drug Smuggling   |
-- | 6           | Priya  | 26  | Female | Theft            |
-- | 7           | Kumar  | 38  | Male   | Murder           |
-- | 8           | Teja   | 24  | Male   | Chain Snatching  |
-- | 9           | Farhan | 29  | Male   | Robbery          |
-- | 10          | Nisha  | 27  | Female | Fraud            |
-- +-------------+--------+-----+--------+------------------+



-- 4. Display all FIR records
SELECT * FROM FIR;

-- Output:
-- +--------+------------+--------------+-------------+------------+
-- | fir_id | fir_date   | crime_loc    | criminal_id | officer_id |
-- +--------+------------+--------------+-------------+------------+
-- | 1      | 2025-03-01 | Chennai      | 1           | 1          |
-- | 2      | 2025-03-05 | Bangalore    | 2           | 2          |
-- | 3      | 2025-03-10 | Delhi        | 3           | 3          |
-- | 4      | 2025-03-15 | Hyderabad    | 4           | 4          |
-- | 5      | 2025-03-20 | Mumbai       | 5           | 5          |
-- | 6      | 2025-03-25 | Chennai      | 6           | 6          |
-- | 7      | 2025-04-01 | Hyderabad    | 7           | 7          |
-- | 8      | 2025-04-05 | Bangalore    | 8           | 8          |
-- | 9      | 2025-04-10 | Delhi        | 9           | 1          |
-- | 10     | 2025-04-12 | Mumbai       | 10          | 2          |
-- +--------+------------+--------------+-------------+------------+



-- 5. Show all solved cases
SELECT * FROM Case_Status WHERE status='Solved';

-- Output:
-- +-----------+--------+--------+------------------+
-- | case_id   | fir_id | status | court_name       |
-- +-----------+--------+--------+------------------+
-- | 1         | 1      | Solved | Chennai Court    |
-- | 3         | 3      | Solved | Delhi Court      |
-- | 5         | 5      | Solved | Mumbai Court     |
-- | 6         | 6      | Solved | Chennai Court    |
-- | 8         | 8      | Solved | Bangalore Court  |
-- | 10        | 10     | Solved | Mumbai Court     |
-- +-----------+--------+--------+------------------+



-- 6. Show criminals with age > 25
SELECT * FROM Criminal WHERE age > 25;

-- Output:
-- +-------------+--------+-----+--------+------------------+
-- | criminal_id | name   | age | gender | crime_type       |
-- +-------------+--------+-----+--------+------------------+
-- | 2           | Amit   | 35  | Male   | Fraud            |
-- | 3           | Sita   | 28  | Female | Kidnapping       |
-- | 4           | John   | 40  | Male   | Cyber Crime      |
-- | 5           | David  | 32  | Male   | Drug Smuggling   |
-- | 6           | Priya  | 26  | Female | Theft            |
-- | 7           | Kumar  | 38  | Male   | Murder           |
-- | 9           | Farhan | 29  | Male   | Robbery          |
-- | 10          | Nisha  | 27  | Female | Fraud            |
-- +-------------+--------+-----+--------+------------------+



-- 7. Show officers with rank 'SI'
SELECT * FROM Officer WHERE rank_name='SI';

-- Output:
-- +------------+--------------+-----------+------------+
-- | officer_id | officer_name | rank_name | station_id |
-- +------------+--------------+-----------+------------+
-- | 1          | Anil         | SI        | 3          |
-- | 4          | Mahesh       | SI        | 2          |
-- | 7          | Sneha        | SI        | 1          |
-- +------------+--------------+-----------+------------+



-- 8. Show FIR happened in Hyderabad
SELECT * FROM FIR WHERE crime_location='Hyderabad';

-- Output:
-- +--------+------------+--------------+-------------+------------+
-- | fir_id | fir_date   | crime_loc    | criminal_id | officer_id |
-- +--------+------------+--------------+-------------+------------+
-- | 4      | 2025-03-15 | Hyderabad    | 4           | 4          |
-- | 7      | 2025-04-01 | Hyderabad    | 7           | 7          |
-- +--------+------------+--------------+-------------+------------+



-- ==========================================================
-- MEDIUM LEVEL QUERIES WITH CORRECT OUTPUT (NEAT ALIGNMENT)
-- ==========================================================


-- 1. Show FIR with criminal names
SELECT f.fir_id, c.criminal_name, f.crime_location
FROM FIR f
JOIN Criminal c ON f.criminal_id = c.criminal_id;

-- Output:
-- +--------+---------------+--------------+
-- | fir_id | criminal_name | crime_loc    |
-- +--------+---------------+--------------+
-- | 1      | Rohit         | Chennai      |
-- | 2      | Amit          | Bangalore    |
-- | 3      | Sita          | Delhi        |
-- | 4      | John          | Hyderabad    |
-- | 5      | David         | Mumbai       |
-- | 6      | Priya         | Chennai      |
-- | 7      | Kumar         | Hyderabad    |
-- | 8      | Teja          | Bangalore    |
-- | 9      | Farhan        | Delhi        |
-- | 10     | Nisha         | Mumbai       |
-- +--------+---------------+--------------+



-- 2. Show officer handling each FIR
SELECT f.fir_id, o.officer_name
FROM FIR f
JOIN Officer o ON f.officer_id = o.officer_id;

-- Output:
-- +--------+--------------+
-- | fir_id | officer_name |
-- +--------+--------------+
-- | 1      | Anil         |
-- | 2      | Prakash      |
-- | 3      | Vijay        |
-- | 4      | Mahesh       |
-- | 5      | Kavitha      |
-- | 6      | Ravi         |
-- | 7      | Sneha        |
-- | 8      | Arjun        |
-- | 9      | Anil         |
-- | 10     | Prakash      |
-- +--------+--------------+



-- 3. Count total criminals
SELECT COUNT(*) AS total_criminals FROM Criminal;

-- Output:
-- +------------------+
-- | total_criminals  |
-- +------------------+
-- | 10               |
-- +------------------+



-- 4. Count total FIR cases
SELECT COUNT(*) AS total_fir FROM FIR;

-- Output:
-- +-----------+
-- | total_fir |
-- +-----------+
-- | 10        |
-- +-----------+



-- 5. Show criminals involved in theft
SELECT * FROM Criminal WHERE crime_type='Theft';

-- Output:
-- +-------------+--------+-----+--------+------------+
-- | criminal_id | name   | age | gender | crime_type |
-- +-------------+--------+-----+--------+------------+
-- | 6           | Priya  | 26  | Female | Theft      |
-- +-------------+--------+-----+--------+------------+



-- 6. Show police station of each officer
SELECT o.officer_name, p.station_name
FROM Officer o
JOIN Police_Station p ON o.station_id = p.station_id;

-- Output:
-- +--------------+------------------+
-- | officer_name | station_name     |
-- +--------------+------------------+
-- | Anil         | South PS         |
-- | Prakash      | Cyber Crime PS   |
-- | Vijay        | Traffic PS       |
-- | Mahesh       | North PS         |
-- | Kavitha      | South PS         |
-- | Ravi         | North PS         |
-- | Sneha        | Central PS       |
-- | Arjun        | Cyber Crime PS   |
-- +--------------+------------------+



-- 7. Show unsolved cases
SELECT * FROM Case_Status WHERE status='Unsolved';

-- Output:
-- +-----------+--------+----------+-------------------+
-- | case_id   | fir_id | status   | court_name        |
-- +-----------+--------+----------+-------------------+
-- | 2         | 2      | Unsolved | Bangalore Court   |
-- | 4         | 4      | Unsolved | Hyderabad Court   |
-- | 7         | 7      | Unsolved | Hyderabad Court   |
-- | 9         | 9      | Unsolved | Delhi Court       |
-- +-----------+--------+----------+-------------------+



-- 8. Count cases by status
SELECT status, COUNT(*) AS total_cases
FROM Case_Status
GROUP BY status;

-- Output:
-- +-----------+-------------+
-- | status    | total_cases |
-- +-----------+-------------+
-- | Solved    | 6           |
-- | Unsolved  | 4           |
-- +-----------+-------------+


-- ==========================================================
-- HARD LEVEL QUERIES WITH CORRECT OUTPUT (NEAT ALIGNMENT)
-- ==========================================================


-- 1. Show complete case details (criminal + officer + status)
SELECT c.criminal_name, o.officer_name, cs.status
FROM Criminal c
JOIN FIR f ON c.criminal_id = f.criminal_id
JOIN Officer o ON f.officer_id = o.officer_id
JOIN Case_Status cs ON f.fir_id = cs.fir_id;

-- Output:
-- +---------------+--------------+-----------+
-- | criminal_name | officer_name | status    |
-- +---------------+--------------+-----------+
-- | Rohit         | Anil         | Solved    |
-- | Amit          | Prakash      | Unsolved  |
-- | Sita          | Vijay        | Solved    |
-- | John          | Mahesh       | Unsolved  |
-- | David         | Kavitha      | Solved    |
-- | Priya         | Ravi         | Solved    |
-- | Kumar         | Sneha        | Unsolved  |
-- | Teja          | Arjun        | Solved    |
-- | Farhan        | Anil         | Unsolved  |
-- | Nisha         | Prakash      | Solved    |
-- +---------------+--------------+-----------+



-- 2. Show number of cases handled by each officer
SELECT officer_id, COUNT(*) AS total_cases
FROM FIR
GROUP BY officer_id;

-- Output:
-- +------------+-------------+
-- | officer_id | total_cases |
-- +------------+-------------+
-- | 1          | 2           |
-- | 2          | 2           |
-- | 3          | 1           |
-- | 4          | 1           |
-- | 5          | 1           |
-- | 6          | 1           |
-- | 7          | 1           |
-- | 8          | 1           |
-- +------------+-------------+



-- 3. Show officer handling most cases
SELECT officer_id, COUNT(*) AS total_cases
FROM FIR
GROUP BY officer_id
ORDER BY total_cases DESC
LIMIT 1;

-- Output:
-- +------------+-------------+
-- | officer_id | total_cases |
-- +------------+-------------+
-- | 1          | 2           |
-- +------------+-------------+
-- Note: Officer 2 also has 2 cases (tie may occur)



-- 4. Show latest FIR registered
SELECT * FROM FIR
ORDER BY fir_date DESC
LIMIT 1;

-- Output:
-- +--------+------------+--------------+-------------+------------+
-- | fir_id | fir_date   | crime_loc    | criminal_id | officer_id |
-- +--------+------------+--------------+-------------+------------+
-- | 10     | 2025-04-12 | Mumbai       | 10          | 2          |
-- +--------+------------+--------------+-------------+------------+



-- 5. Show criminals involved in unsolved cases
SELECT c.criminal_name
FROM Criminal c
JOIN FIR f ON c.criminal_id = f.criminal_id
JOIN Case_Status cs ON f.fir_id = cs.fir_id
WHERE cs.status='Unsolved';

-- Output:
-- +---------------+
-- | criminal_name |
-- +---------------+
-- | Amit          |
-- | John          |
-- | Kumar         |
-- | Farhan        |
-- +---------------+



-- 6. Count crimes in each location
SELECT crime_location, COUNT(*) AS total_crimes
FROM FIR
GROUP BY crime_location;

-- Output:
-- +--------------+--------------+
-- | crime_loc    | total_crimes |
-- +--------------+--------------+
-- | Chennai      | 2            |
-- | Bangalore    | 2            |
-- | Delhi        | 2            |
-- | Hyderabad    | 2            |
-- | Mumbai       | 2            |
-- +--------------+--------------+



-- 7. Show police station handling most cases
SELECT p.station_name, COUNT(*) AS total_cases
FROM Police_Station p
JOIN Officer o ON p.station_id = o.station_id
JOIN FIR f ON o.officer_id = f.officer_id
GROUP BY p.station_name
ORDER BY total_cases DESC
LIMIT 1;

-- Output:
-- +--------------+-------------+
-- | station_name | total_cases |
-- +--------------+-------------+
-- | South PS     | 3           |
-- +--------------+-------------+



-- 8. Show criminals whose cases are solved
SELECT DISTINCT c.criminal_name
FROM Criminal c
JOIN FIR f ON c.criminal_id=f.criminal_id
JOIN Case_Status cs ON f.fir_id=cs.fir_id
WHERE cs.status='Solved';

-- Output:
-- +---------------+
-- | criminal_name |
-- +---------------+
-- | Rohit         |
-- | Sita          |
-- | David         |
-- | Priya         |
-- | Teja          |
-- | Nisha         |
-- +---------------+
