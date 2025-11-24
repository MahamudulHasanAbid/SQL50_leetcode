/* Write a solution to find managers with at least five direct reports.

Return the result table in any order.

The result format is in the following example.*/


select e2.name
from Employee e1
join Employee e2 on e1.managerId = e2.id
group by e2.id, e2.name
having count(e1.id) >= 5;
