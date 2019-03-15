

SELECT copy.bid
FROM copy
WHERE copy.edition = 3 AND copy.bid NOT IN(SELECT copy.bid FROM copy WHERE copy.edition =2) 
ORDER BY copy.bid;

