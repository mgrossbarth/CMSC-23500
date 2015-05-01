SELECT artistID, fname, lname, min(age_of_death)
FROM (SELECT artistID, fname, lname, deathYear-birthYear as age_of_death
      FROM Artists);