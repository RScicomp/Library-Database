SELECT count(memberloans) as nummembers
FROM (SELECT DISTINCT member.mid FROM member INNER JOIN loan ON member.mid = loan.mid AND loan.fine > 0) as memberloans;

