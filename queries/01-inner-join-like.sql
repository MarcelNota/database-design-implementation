USE mydb;

-- Retrieve the first name, last name, and message of users
-- whose posts contain the word "ipsum".
SELECT 
    brainiac.FirstName,
    brainiac.LastName,
    post.Message
FROM Brainiac
INNER JOIN Post
    ON brainiac.Username = post.Brainiac_Username
WHERE post.Message LIKE '%ipsum%';