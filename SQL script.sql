
## First and foremost part is import file and then look at the data before take any actions.

Simple qeury our data.


select *
from amazon
limit 50;


2) Which genre has the most books in this category?
select genre, count(genre) as count_genres
from amazon 
group by genre


3) How do user ratings differ for each genre?
select genre, "User Rating"
from amazon
group by genre


4) How does price differ for Fiction and Non Fiction books?
select genre, sum(price)
from amazon a 
group by genre


5) Which genres have the highest and lowest ratings?
select max("user rating") as highest_rating, 
	   min("user rating") as lowest_rating, 
genre
from amazon
where genre = 'Non Fiction' or genre = 'Fiction'
group by genre;


6) Which genre is most popular and which have earned the most in this category?
select genre, max("User Rating") as max_rating, sum(price) as total_earnings
from amazon
group by genre
order by total_earnings desc, max_rating desc;


7) Which books have earned the most money in each genre?
select genre, sum(price)
from amazon
group by genre


8) Price of books of each genre over the years.
select genre, price, "year"
from amazon
group by genre, "year"
order by "year";


9) How has been the customer reviews by genre over the years?
select genre, reviews, "year"
from amazon
group by genre, "year"  
order by year


10) The price range of books by each genre in the Bestsellers list
select genre, min(price) as min_price, max(price) as max_price, avg(price) as avg_price
from amazon
group by genre


11) Reviews of books by genre for each year
select genre, "year", reviews
from amazon
group by genre, "year"
order by "year" asc, genre asc;


12) The number of books by each genre over years
select genre, "year", count(*) as number_books
from amazon
group by genre, "year"
order by "year" asc, genre asc;



