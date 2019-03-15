SELECT book.bid,book.title
FROM (SELECT DISTINCT copy.bid
FROM copy
WHERE NOT EXISTS (SELECT loan.bid FROM loan WHERE loan.bid = copy.bid)) AS nocopyloan, book
WHERE book.bid = nocopyloan.bid
ORDER BY book.bid;

