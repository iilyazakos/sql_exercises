/*
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X.
List the rows such that X1 ≤ Y1.
*/

select f1.X, f1.Y
from Functions f1
join Functions f2 on f1.X = f2.Y and f1.Y = f2.X
group by f1.X, f1.Y
having count(f1.X) > 1 or f1.X < f1.Y
order by f1.X;
