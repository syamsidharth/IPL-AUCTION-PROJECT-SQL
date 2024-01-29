create database ipl;
use ipl; 
 select * from players;
 
 -- Listing the players who played in Ipl from australia 
  select * from players where country="australia";
  
-- list the players whose age is between 25 and 30 
select fullname,age from players where age >25 and age<30;

-- list the players who played in IPL 2021 for Delhi capitals
select fullname from players where 2021ipl="dc";

-- list the country who are allrounders with Right hand bowling style 
select country from players where specialism="all rounder"and bowlingstyle="right arm off spin";

-- list the players whose price is greater than avg price 
select fullname from players where am_p_in_laks>(select avg(am_p_in_laks) from players) order by am_p_in_laks desc;

-- Most valueble player 
select fullname from players where am_p_in_laks=(select max(am_p_in_laks) from players) order by am_p_in_laks limit 1;

-- list the number of players from other countries 
select country, count(*) from players  where country<>"india" group by country;

-- * list the players of india 
select * from players where country="india";

-- Number of batsmans from india
select specialism,count(*)from  players where country="india" and specialism="batsman";

-- player who have the most t20 caps 
select fullname from players where t20caps=(select max(t20caps)from players) order by t20caps limit 1;

-- Indian players who played for RCB  2021
select fullname from players where 2021team='rcb' and country='india';

-- list of players who played in Ashwin's team in 2021 IPL
select fullname,2021team from players where 2021team in(select 2021team from players where fullname="r ashwin");








