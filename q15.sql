

SELECT AVG(num.numloans) as avgloans
FROM (SELECT loan.mid, COUNT(loan.mid) as numloans
FROM loan
GROUP BY loan.mid) as num;