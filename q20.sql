SELECT * FROM 
(SELECT member.mid, SUM(loan.fine)
FROM member,loan
WHERE member.mid = loan.mid AND member.status = 'REGULAR' and loan.fine IS NOT NULL
GROUP BY member.mid) as totalfines
GROUP BY totalfines.mid, totalfines.sum
HAVING totalfines.sum > (SELECT AVG(totalfines.sum) 
						 FROM (SELECT member.mid, SUM(loan.fine)
FROM member,loan
WHERE member.mid = loan.mid AND member.status = 'REGULAR' and loan.fine IS NOT NULL
GROUP BY member.mid) as totalfines);