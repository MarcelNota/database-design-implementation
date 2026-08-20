USE mydb;

-- Return friend usernames associated with Brainiac users
-- whose last name contains "Smith".
SELECT
    Friend.Username,
    Brainiac.FirstName,
    Brainiac.LastName
FROM Brainiac
INNER JOIN Friend
    ON Brainiac.Username = Friend.Brainiac_Username
GROUP BY
    Friend.Username,
    Brainiac.FirstName,
    Brainiac.LastName
HAVING Brainiac.LastName LIKE '%smith%';