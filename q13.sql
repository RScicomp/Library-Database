SELECT counts.mid, member.mname
FROM 
(SELECT loan.mid, COUNT(loan.mid) as loancounts
FROM loan
WHERE loan.returned_date > loan.due_date
GROUP BY loan.mid) as counts, member
WHERE member.mid = counts.mid AND counts.loancounts >= 3;