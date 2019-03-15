SELECT book.bid, book.title, loan.fine
FROM book,loan
WHERE book.bid = loan.bid AND loan.mid = 11111111 AND loan.fine != 0
ORDER BY book.bid;


