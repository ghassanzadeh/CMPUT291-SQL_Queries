--Question 8
.print Question 8 - ghassanz

select vehicle_year, vehicle_make, vehicle_color
from (( select x.year as vehicle_year, x.make as vehicle_make from vehicles x 
group by vehicle_year, vehicle_make 
having count(vehicle_make) >= (select max(num_make) from (select year, count(make) as num_make from vehicles where year = vehicle_year group by make, year) group by year))
inner join
(select z.year as vehicle_year2, z.color as vehicle_color from vehicles z group by z.color, vehicle_year2
having count(z.color) >= (select max(num_color) from (select count(color) as num_color, year from vehicles where year = vehicle_year2 group by color, year) group by year)) on ( vehicle_year = vehicle_year2));


