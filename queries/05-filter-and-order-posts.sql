USE mydb;

-- Retrieve Brainiac users and their posts containing the word "ipsum".
-- The results are sorted alphabetically by first name and then last name.
SELECT
    Brainiac.FirstName,
    Brainiac.LastName,
    Post.Message
FROM Brainiac
INNER JOIN Post
    ON Brainiac.Username = Post.Brainiac_Username
WHERE Post.Message LIKE '%ipsum%'
ORDER BY
    Brainiac.FirstName,
    Brainiac.LastName;