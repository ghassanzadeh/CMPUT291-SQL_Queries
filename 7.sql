--Question 7

.print Question 7 - ghassanz

select v.color, avg(cnt), sum(ticket_fine)/count_fine, max(ticket_fine) from 
(select r.expiry as reg_exp , r.regno, r.vin as reg_vin, t.fine as ticket_fine, sum(t.fine) as sum_fine, count(t.fine) as count_fine, count(t.tno) as cnt
from registrations r left outer join tickets t using(regno) group by r.regno), vehicles v
where v.vin = reg_vin and julianday('now') + 30 <= julianday(reg_exp)
group by v.color;

