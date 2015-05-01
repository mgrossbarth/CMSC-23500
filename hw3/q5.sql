SELECT title
FROM (SELECT paperID, count(paperID) as num_auth
      FROM Authorship
      GROUP BY paperID)
NATURAL JOIN Papers
WHERE num_auth = 1;