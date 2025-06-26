-- All columns from Book table
SELECT * FROM Book;

-- Only book titles and authors
SELECT Title, Author FROM Book;

-- Names and emails of all members
SELECT Name, Email FROM Member;


-- Find books published after 2010 in the 'Programming' genre
SELECT * FROM Book
WHERE YearPublished > 2010 AND Genre = 'Programming';


-- Find members who joined before 2024-03-01 OR have NULL email
SELECT * FROM Member
WHERE JoinDate < '2024-03-01' OR Email IS NULL;


-- Find books with titles that start with 'The'
SELECT * FROM Book
WHERE Title LIKE 'The%';


-- Get loans between two specific dates
SELECT * FROM Loan
WHERE LoanDate BETWEEN '2025-06-01' AND '2025-06-15';


-- List books ordered by year published (newest first)
SELECT * FROM Book
ORDER BY YearPublished DESC;

-- List members by name alphabetically
SELECT * FROM Member
ORDER BY Name ASC;


-- Get books of genre 'Classic' published between 1950 and 2000, sorted by title
SELECT Title, Author, YearPublished FROM Book
WHERE Genre = 'Classic' AND YearPublished BETWEEN 1950 AND 2000
ORDER BY Title;
