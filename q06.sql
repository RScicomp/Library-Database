SELECT * FROM
(SELECT loan.bid,book.title
FROM loan
INNER JOIN book ON loan.bid = book.bid
WHERE loan.mid = 11111114
EXCEPT
SELECT loan.bid,book.title
FROM loan
INNER JOIN book ON loan.bid = book.bid
WHERE loan.mid = 11111118) as shared
ORDER BY shared.bid;
