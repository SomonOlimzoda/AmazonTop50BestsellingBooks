
## First we import the file and then look at the data before take any actions.

Let's look at our data. 

select *
from amazon;

We see that the data contain 550 rows(50 rows per year according to the title name from 2009-19) and 7 columns each categorized:

Name, Author, User Rating, Reviews, Price, Year, Genre

# Let's see if our data is clean 

select distinct *
from amazon

There is no duplicated or null entries. 

# Let's start our analysis 

1) Which genre has the most books in this category?

select genre, 
count(genre) as count_genres
from amazon 
group by genre

Fiction 240, Non-Fiction 310 books

2) How do user ratings differ for each genre?

select genre, 
"User Rating"
from amazon
group by genre

User rating for Fiction is 4.6, Non-Fiction 4.7 

3) How does price differ for Fiction and Non Fiction books?
select genre, 
sum(price)
from amazon a 
group by genre

Genre		Price
Fiction		2604
Non Fiction	4601

-- How does price differ for Fiction and Non Fiction books over years?

select genre, 
year, 
price
from amazon a 
group by year, genre
order by genre desc;

-- Which genres have the highest and lowest ratings?

select genre,
max("user rating") as highest_rating, 
min("user rating") as lowest_rating
from amazon
where genre = 'Non Fiction' or genre = 'Fiction'
group by genre;


-- Which genre is most popular and which have earned the most in this category?

select genre, 
max("User Rating") as max_rating, 
sum(price) as total_earnings
from amazon
group by genre
order by total_earnings desc, max_rating desc;


-- Which books have earned the most money in each genre?

select genre, 
sum(price)
from amazon
group by genre


-- Price of books of each genre over the years.

select genre, 
price, 
"year"
from amazon
group by genre, "year"
order by "year";


-- How has been the customer reviews by genre over the years?

select genre, 
reviews, 
"year"
from amazon
group by genre, "year"  
order by year


-- The price range of books by each genre in the Bestsellers list

select genre, 
min(price) as min_price,
max(price) as max_price, 
avg(price) as avg_price
from amazon
group by genre


-- Reviews of books by genre for each year

select genre, 
"year", 
reviews
from amazon
group by genre, "year"
order by "year" asc, genre asc;


-- The number of books by each genre over years

select genre, 
"year", 
count(*) as number_books
from amazon
group by genre, "year"
order by "year" asc, genre asc;


-- Amazon top 50 books by user rating from 2009-19

select name, 
"User Rating", 
year
from amazon
group by "User Rating", year
order by "User Rating" desc
limit 50;

-- Most of the books were rated 4.6 or above, indicating that the overall rating of the books was high.

select count(name),
avg("user rating")
from amazon a 
group by "User Rating" 
order by "User Rating" desc

-- Author Jeff Kinney has the most 12 (fiction) books with in the Bestsellers List.

select author,
count(author),
genre
from amazon
group by Author, genre
order by count(author) desc

-- Top 10 bestselling books by "User Rating" and Reviews 

select *
from amazon a 
group by name, Reviews
order by "User Rating" desc, Reviews desc
limit 10


-- Name of authors who wrote many books(top 10)

select author,
count(author)
from amazon a 
group by author
order by count(author) desc
limit 10;


-- top 10 books by number of reviews

select name, reviews, year
from amazon a 
order by Reviews desc, year desc
limit 10;


-- The majority of books have up to 10,000 reviews

select reviews,
count(Reviews)
from amazon
group by Reviews 
order by Reviews  desc 


-- Majority of user ratings are between 4.4 and 4.9

select avg("User Rating"),
count("User Rating")
from amazon
group by Name  
order by "User Rating"  desc


-- Majority of bestsetllers are priced between $8 and $9.

select Price,
count(price)
from amazon
group by price
order by Price desc



























