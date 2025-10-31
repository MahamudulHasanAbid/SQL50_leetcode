/* Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order. */

select w1.id from Weather w1
left join Weather w2 ON w1.recordDate - interval 1 day = w2.recordDate
where w1.temperature > w2.temperature;
