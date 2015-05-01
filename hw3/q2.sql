SELECT * FROM
(SELECT title, lname, year-birthYear AS age
 FROM Artists, Paintings
 WHERE artistID = painterID
 UNION
 SELECT title, lname, year-birthYear AS age
 FROM Artists, Sculptures
 WHERE artistID = sculptorID)
ORDER BY age ASC;