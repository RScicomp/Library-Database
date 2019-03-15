(SELECT book.bid, COUNT(loan.bid) as numloans
FROM book, loan
WHERE book.bid = loan.bid 
GROUP BY book.bid
ORDER BY book.bid)
UNION
(SELECT DISTINCT bid, 0 as numloans
FROM copy
WHERE NOT EXISTS(
SELECT 
FROM loan
WHERE loan.bid = copy.bid))
ORDER BY bid;