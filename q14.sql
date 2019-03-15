SELECT loan.bid, COUNT(loan.bid) as numloans
FROM loan
GROUP BY loan.bid
ORDER BY numloans DESC, loan.bid ASC;


