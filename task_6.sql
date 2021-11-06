/*
Определить товары, которые покупали более 1 раза
*/

select good_name
from Goods g
join Payments p on g.good_id = p.good
group by good
having count(good) > 1;
