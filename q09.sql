SELECT book.bid
FROM book
WHERE EXISTS(SELECT * FROM loan WHERE book.publisher = 'Vintage' AND (loan.bid = book.bid AND loan.mid = 11111111))
ORDER BY book.bid;

