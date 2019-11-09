--Question 10

.print Question 10 - ghassanz

select first_name, last_name, car_make, car_model
from (select d.fname as first_name, d.lname as last_name, v.make as car_make, v.model as car_model
	from personDetails d, vehicles v, registrations r, tickets t
	where r.fname = d.fname and r.lname = d.lname
	      and r.vin = v.vin and r.regno = t.regno
	      and d.ticketsRcvd >= 3 and t.violation like 'red light%'
	      group by d.fname, d.lname, v.make, v.model);
