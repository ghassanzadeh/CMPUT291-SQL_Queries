
--Question 4
.print Question 4 - ghassanz
select p.fname, p.lname from persons p, births b
where p.fname = b.fname and p.lname = b.lname and b.f_fname = "Michael" and b.f_lname = "Fox" and
p.bdate in (select min(p.bdate) from persons p, births b where p.fname = b.fname and p.lname = b.lname and b.f_fname = "Michael" and b.f_lname = "Fox");

--Question 4- Second Solution
.print Question 4 - ghassanz
select p.fname, p.lname from persons p, births b where p.fname = b.fname and p.lname = b.lname and b.f_fname = "Michael" and b.f_lname = "Fox" and p.bdate = (select p.bdate from persons p, births b where p.fname = b.fname and p.lname = b.lname and b.f_fname = "Michael" and b.f_lname = "Fox" order by p.bdate limit 1);
