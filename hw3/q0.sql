SELECT title, lname, height_mm/25.4 AS height_in, width_mm/25.4 AS width_in
FROM Artists, Paintings
WHERE artistID = painterID
ORDER BY height_mm*width_mm DESC;