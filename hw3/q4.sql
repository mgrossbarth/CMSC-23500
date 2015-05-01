SELECT artistID, lname, group_concat(media, ", ") AS media
FROM (SELECT DISTINCT artistID, lname, medium || " on " || mediumOn as media
      FROM Artists, Paintings
			WHERE artistID = painterID)
GROUP BY artistID
ORDER BY lname ASC;