/*
Сколько и кто из семьи потратил на развлечения (entertainment). Вывести статус в семье, имя, сумму
*/

SELECT fm.status, fm.member_name, SUM(p.amount*p.unit_price) AS costs
FROM FamilyMembers AS fm
JOIN Payments AS p
    ON fm.member_id=p.family_member
JOIN Goods AS g
    ON p.good=g.good_id
JOIN GoodTypes AS gt
    ON g.type=gt.good_type_id
WHERE good_type_name = 'entertainment'
GROUP BY fm.status, fm.member_name;
