-- DATABASE used cricket_1.csv and cricket_2.csv

-- Q1. Find all the players who were present in the test match1 or match2
select PLayer_name from cricket_1 
union 
select Player_name from cricket_2;

-- Q2. Write a MySQL query to find the players from the test match 1 having popularity higher than the average popularity
select player_name, popularity from cricket_1
where popularity > (select avg(popularity) from cricket_1);

-- Q3. Find player_id and player_name that are common in the test match 1 and match 2.
select player_name, player_id from cricket_1 
where cricket_1.player_id in (select player_id from cricket_2);

-- Q4. Retrieve player_id, runs, player_name from cricket_1 table and display the list of players where the runs are more than the average runs
select player_id, runs, player_name from cricket_1 
where runs > (select avg(runs) from cricket_1);

-- Q5. Write a query to extract the player_id, runs and player_name from the table "cricket_1" where the runs are greater than 50
select player_id, runs, player_name from cricket_1 
where runs > 50;

-- Q6. Write a query to extract all the columns from cricket_1 where player_name starts with 'y' and ends with 'v'
select * from cricket_1
where player_name like 'y%v';

-- Q7. Write a query to extract all the columns from cricket_1 where player_name does not end with 't'
select * from cricket_1
where player_name not like '%t';

