SELECT counts.bid, counts.maxcount
FROM (SELECT loan.bid, COUNT(loan.bid) as maxcount
FROM member,loan
WHERE member.mid = loan.mid AND member.status = 'STUDENT'
GROUP BY loan.bid) as counts
WHERE maxcount = (
	SELECT DISTINCT MAX(maxcount)
	FROM (SELECT loan.bid, COUNT(loan.bid) as maxcount
FROM member,loan
WHERE member.mid = loan.mid AND member.status = 'STUDENT'
GROUP BY loan.bid) as counts
)
ORDER BY counts.bid;