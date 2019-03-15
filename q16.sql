SELECT num.status,AVG(num.numoverdueloans) as avgloans
FROM 
(SELECT member.mid, member.status,COUNT(loan.mid) as numoverdueloans
FROM member
LEFT OUTER JOIN loan ON loan.mid = member.mid AND loan.returned_date > loan.due_date
GROUP BY member.mid,loan.mid, member.status)as num
GROUP BY num.status;
