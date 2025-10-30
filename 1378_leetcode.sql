/* Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Return the result table in any order. */

select EU.unique_id, E.name 
from Employees E
left join EmployeeUNI EU
ON E.id = EU.id;
