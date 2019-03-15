
SELECT book.bid, copy.cid, copy.edition
FROM book,copy
WHERE book.bid = copy.bid AND (copy.edition = 2 OR copy.edition = 3)
ORDER BY book.bid, copy.bid;