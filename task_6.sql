/*
Определить товары, которые покупали более 1 раза
*/


SELECT good_name
FROM Goods
JOIN Payments
    ON Goods.good_id=Payments.good
GROUP BY good
HAVING COUNT(good) > 1;
