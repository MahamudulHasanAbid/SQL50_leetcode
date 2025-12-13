/*  Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order.

The result format is in the following example.*/
select * 
from Cinema
where lower(description) not like '%boring%' 
and id%2 != 0
order by rating desc;
