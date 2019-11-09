--Question 1
.print Question 1 - ghassanz
select p.fname, p.lname, p.phone from persons p, vehicles v, registrations d 
where v.vin = d.vin and v.make = "Chevrolet" and v.model = "Camaro" and v.year= 1969 and p.fname = d.fname and p.lname = d.lname;
