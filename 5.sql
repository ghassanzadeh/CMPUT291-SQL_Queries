--Question 5
.print Question 5 - ghassanz

select fname, lname from demeritNotices where date('now', '-2 years') <= date(ddate) group by fname, lname having sum(points) >= 15;

--Question 5- Second Solution
.print Question 5 - ghassanz

select fname, lname from demeritNotices where (julianday('now') - julianday(ddate)) <= 730 group by fname, lname having sum(points) >= 15;
