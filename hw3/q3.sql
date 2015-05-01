SELECT lname, title
FROM Artists, Paintings
WHERE location IS NULL AND artistID = painterID
UNION
SELECT lname, title
FROM Artists, Sculptures
WHERE location IS NULL AND artistID = sculptorID;