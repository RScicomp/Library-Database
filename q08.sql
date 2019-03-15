SELECT DISTINCT book.bid, book.title
FROM book
INNER JOIN loan ON loan.mid = 11111111 AND book.bid = loan.bid
WHERE book.publisher = 'Vintage'
ORDER BY book.bid;