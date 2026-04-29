# 📊 Amazon Bestselling Books Analysis

### SQL Data Analysis Project

## 📌 Project Overview

This project explores trends in Amazon bestselling books using SQL. The goal is to extract meaningful insights about customer preferences, pricing strategies, and author performance.

The analysis simulates a real-world business scenario where a data analyst is tasked with identifying patterns in product success based on ratings, reviews, and genre distribution.

---

## 🎯 Objectives

* Identify top-performing books and authors
* Analyze how ratings and reviews influence popularity
* Compare Fiction vs Non-Fiction trends
* Examine pricing patterns among bestsellers
* Track changes in performance over time

---

## 🗂️ Dataset Description

**Table:** `amazon_clean`

| Column     | Description               |
| ---------- | ------------------------- |
| Name       | Book title                |
| Author     | Author of the book        |
| Year       | Year listed as bestseller |
| Genre      | Fiction or Non Fiction    |
| UserRating | Average rating (0–5)      |
| Reviews    | Total number of reviews   |
| Price      | Price of the book         |

---

## 🔍 Key Analysis & Queries

### 📈 1. Overall Dataset Size

```sql
SELECT COUNT(*) AS total_books FROM amazon_clean;
```

---

### ⭐ 2. Top Books by Reviews

* Identifies the most popular books based on customer engagement

```sql
SELECT Name, Author, Reviews
FROM amazon_clean
ORDER BY Reviews DESC
LIMIT 50;
```

---

### 🏆 3. Highest Rated Books

* Finds books with the best user satisfaction

```sql
SELECT Name, Author, UserRating
FROM amazon_clean
ORDER BY UserRating DESC;
```

---

### 📚 4. Genre Distribution

* Compares Fiction vs Non-Fiction popularity

```sql
SELECT Genre, COUNT(*) AS total_books
FROM amazon_clean
GROUP BY Genre;
```

---

### 📅 5. Yearly Trends

* Tracks how ratings change over time

```sql
SELECT Year, AVG(UserRating) AS avg_rating
FROM amazon_clean
GROUP BY Year
ORDER BY Year;
```

---

### 💬 6. High Engagement Books

* Books with over 10,000 reviews (high demand indicator)

```sql
SELECT Name, Reviews, Year
FROM amazon_clean
WHERE Reviews > 10000;
```

---

### 💰 7. Pricing Analysis

* Identifies premium-priced bestsellers

```sql
SELECT Name, Price
FROM amazon_clean
ORDER BY Price DESC
LIMIT 10;
```

---

### ✍️ 8. Top Authors

* Authors with the most bestselling books

```sql
SELECT Author, COUNT(*) AS total_books
FROM amazon_clean
GROUP BY Author
ORDER BY total_books DESC
LIMIT 10;
```

---

## 📊 Key Insights

* Books with higher review counts tend to dominate bestseller rankings
* A small group of authors consistently produce top-selling books
* Fiction and Non-Fiction show distinct popularity patterns
* Highly rated books are not always the most reviewed
* Pricing varies widely, but most bestsellers remain affordable

---

## 🛠️ Skills Demonstrated

* Data querying and filtering
* Aggregation and grouping
* Trend analysis
* Data storytelling with SQL
* Analytical thinking and insight generation

---

## 🚀 Tools & Technologies

* SQL (MySQL)
  

## 🔮 Future Improvements

* Add window functions (RANK, DENSE_RANK)
* Build interactive dashboards (Power BI / Tableau)
* Perform deeper statistical analysis
* Integrate with Python (Pandas, Matplotlib)

---

## 💼 Portfolio Value

This project demonstrates the ability to:

* Work with real-world datasets
* Extract actionable insights
* Write clean and efficient SQL queries
* Communicate findings clearly

---



