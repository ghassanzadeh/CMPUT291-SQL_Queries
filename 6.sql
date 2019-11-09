--Question 6
.print Question 6 - ghassanz
select f, l from (select p1_fname as f, p1_lname as l, regdate from marriages where p2_fname = "Michael" and p2_lname = "Fox"
union
select p2_fname as f, p2_lname as l, regdate from marriages where p1_fname = "Michael" and p1_lname = "Fox") order by regdate desc limit 1;
