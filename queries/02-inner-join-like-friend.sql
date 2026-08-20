USE mydb;

-- Retrieve the friend username, connection date, and first name
-- of Brainiac users whose first name contains "Brandeis".
SELECT 
    Friend.UserName AS name_of_friend,
    Friend.DateConnected AS date_of_friend_connection,
    Brainiac.FirstName AS brainiac_name
FROM Friend
INNER JOIN Brainiac
    ON Friend.UserName = Brainiac.Username
WHERE Brainiac.FirstName LIKE '%brand%';