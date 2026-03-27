SELECT COUNT(*) FROM amazon_clean;

-- fiction books
SELECT * FROM amazon_clean
WHERE Genre = 'Fiction';

-- non fiction
SELECT * FROM amazon_clean
WHERE Genre = 'Non Fiction';

-- top 50 sellers
SELECT ï»¿Name, author, year, reviews
FROM amazon_clean
ORDER BY reviews DESC
LIMIT 50;

-- books greater than four realease 2019
SELECT ï»¿Name, author, year, UserRating
FROM amazon_clean
where UserRating > 4
and year = 2019;

-- books greather than 10k review 2018 
SELECT ï»¿Name, Author, Year, Reviews
FROM amazon_clean
WHERE Reviews > 10000
  AND Year = 2018;
  
  -- most expensive books 
  SELECT ï»¿Name, author, price
FROM amazon_clean
ORDER BY price DESC
LIMIT 10;

 -- top author by count
 SELECT author, COUNT(*) AS total_books
FROM amazon_clean
GROUP BY author
ORDER BY total_books DESC
LIMIT 10;

-- higest rated book
SELECT ï»¿Name, author, userrating
FROM amazon_clean
ORDER BY userrating DESC
LIMIT 10;

-- average rating per year  
SELECT Year,
    ROUND(AVG(UserRating), 2) AS AvgRating
FROM amazon_clean
GROUP BY Year
ORDER BY Year;

-- count of fiction vs non fiction
SELECT Year, Genre,
COUNT(*) AS TotalBooks
FROM amazon_clean
GROUP BY Year, Genre
ORDER BY Year, Genre;





                    



