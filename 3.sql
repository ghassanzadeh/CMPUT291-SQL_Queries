--Question 3
.print Question 3 - ghassanz

select g4.fname, g4.lname from births g1, births g2, births g3, births g4
where (g1.fname = "Michael" and g1.lname = "Fox") and
      ((g1.f_fname = g2.fname and g1.f_lname = g2.lname) or (g1.m_fname = g2.fname and g1.m_lname = g2.lname))
    and (g2.f_fname = g3.f_fname and g2.f_lname = g3.f_lname)
    and ((g3.fname = g4.f_fname and g3.lname = g4.f_lname) or (g3.fname = g4.m_fname and g3.lname = g4.m_lname))

except

select g4.fname, g4.lname
from births g4
where g4.fname = "Michael" and g4.lname = "Fox";

