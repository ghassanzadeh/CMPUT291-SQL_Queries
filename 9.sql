--Question 9

.print Question 9 - ghassanz

create view personDetails (fname, lname, bdate, bplace, carsowned, ticketsRcvd)
as select first_name, last_name, birth_date,birth_place, num_tickets, num_reg
from (select p.fname as first_name1, p.lname as last_name1, p.bdate as birth_date1, p.bplace as birth_place1, count(r.regno) as num_reg
	from persons p left outer join registrations r on r.fname = p.fname and r.lname = p.lname group by p.fname, p.lname),	
	(select p.fname as first_name, p.lname as last_name, p.bdate as birth_date, p.bplace as birth_place, count(t.tno) as num_tickets, t.vdate as ticket_date
	from (registrations r left outer join tickets t on r.regno = t.regno), persons p group by p.fname, p.lname), registrations r, tickets t
where date('now', '-1 year') <= date(r.regdate) and date('now', '-1 year') <= date(t.vdate) and first_name1= first_name and last_name1=last_name and birth_date1 = birth_date and birth_place1 = birth_place
group by first_name, last_name;











