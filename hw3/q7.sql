SELECT title, num_auth
FROM (SELECT title, paperID, count(paperID) AS num_auth
      FROM Authorship NATURAL JOIN Papers
			GROUP BY paperID)
WHERE num_auth = (SELECT max(num_auth)
                  FROM (SELECT paperID, count(paperID) as num_auth
									      FROM Authorship
												GROUP BY paperID));