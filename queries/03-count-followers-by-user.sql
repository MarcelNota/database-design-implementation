USE mydb;

-- Count the number of followers associated with the Brainiac
-- whose first name is 'Brandeis'.
SELECT DISTINCT
    COUNT(Follower.UserName) AS follower_list
FROM Follower
INNER JOIN Brainiac
    ON Follower.Brainiac_Username = Brainiac.Username
WHERE Brainiac.FirstName = 'brandeis';