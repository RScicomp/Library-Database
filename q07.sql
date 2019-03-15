SELECT DISTINCT book.bid,book.title
FROM book, loan
WHERE book.publisher = 'Vintage' AND loan.mid = 11111111 AND book.bid = loan.bid
ORDER BY book.bid;