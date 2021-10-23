/*
The report: https://www.hackerrank.com/challenges/the-report/problem
*/

select case when Grade >= 8 then Name
            else 'NULL' end, Grade, Marks
from Students, Grades
where Marks >= Min_mark
and Marks <= Max_mark
order by Grade desc, Name;
