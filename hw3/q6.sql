SELECT title, num_inst
FROM (SELECT title, paperID, count(DISTINCT instID) as num_inst
      FROM Authorship NATURAL JOIN Papers
			GROUP BY paperID)
where num_inst > 1;