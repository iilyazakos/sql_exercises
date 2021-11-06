/*
Вывести отсортированный по количеству перелетов (по убыванию) и 
имени (по возрастанию) список пассажиров, совершивших хотя бы 1 полет.
*/

select name, count(trip) as count  
from Passenger
join Pass_in_trip on Passenger.id=Pass_in_trip.passenger
group by passenger
having count(trip) > 0
order by count(trip) desc, name;
