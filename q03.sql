SELECT DISTINCT book.bid, book.title
FROM loan,book
WHERE loan.mid = 11111111 AND book.bid = loan.bid
ORDER BY book.bid;