/*
Сколько и кто из семьи потратил на развлечения (entertainment). Вывести статус в семье, имя, сумму
*/

select fm.status, fm.member_name,
       sum(p.amount*p.unit_price) as costs
from FamilyMembers fm
join Payments p on fm.member_id = p.family_member
join Goods g on p.good = g.good_id
join GoodTypes gt on g.type=gt.good_type_id
where good_type_name = 'entertainment'
group by fm.status, fm.member_name;
