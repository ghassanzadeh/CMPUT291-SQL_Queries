--Question 2
.print Question 2 - ghassanz

select p.fname, p.lname from births p, births m 
where m.fname = "Michael" and m.lname = "Fox" and p.f_fname = m.f_fname and p.f_lname = m.f_lname 
except select p.fname, p.lname from births p where p.fname = "Michael" and p.lname = "Fox" union
select p.fname, p.lname from births p, births m 
where m.fname = "Michael" and m.lname = "Fox" and p.m_fname = m.m_fname and p.m_lname = m.m_lname
except select p.fname, p.lname from births p where p.fname = "Michael" and p.lname = "Fox";
