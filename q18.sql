
SELECT DISTINCT copy.bid,COUNT(loan.bid) as numloans
FROM copy
LEFT OUTER JOIN loan ON loan.bid=copy.bid AND loan.cid = copy.cid
GROUP BY copy.bid
ORDER BY copy.bid;