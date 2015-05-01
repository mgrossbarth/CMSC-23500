SELECT authID, fname, lname, count(authID) as num_papers
FROM Authors NATURAL JOIN Authorship
GROUP BY authID
ORDER BY lname, fname ASC;