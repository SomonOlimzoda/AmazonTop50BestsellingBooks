
## First we import the file and then look at the data before take any actions.

Let's look at our data. 

select *
from amazon;

We see that the data contain 550 rows(50 rows per year according to the title name from 2009-19) and 7 columns each categorized:

Name, Author, User Rating, Reviews, Price, Year, Genre

Now, it's time to answer the questions.

1) Which genre has the most books in this category?

select genre, count(genre) as count_genres
from amazon 
group by genre

Fiction 240, Non-Fiction 310 books

2) How do user ratings differ for each genre?

select genre, "User Rating"
from amazon
group by genre

User rating for Fiction is 4.6, Non-Fiction 4.7 

3) How does price differ for Fiction and Non Fiction books?
select genre, sum(price)
from amazon a 
group by genre

Genre		Price
Fiction		2604
Non Fiction	4601

How does price differ for Fiction and Non Fiction books over years?

select genre, year, price
from amazon a 
group by year, genre
order by genre desc;

Genre		Year  Price        Genre	Year  Price
Non Fiction	2009	17  	|  Fiction	2009	13
Non Fiction	2010	2    	|  Fiction	2010	11
Non Fiction	2011	32 	|  Fiction	2011	22
Non Fiction	2012	24	|  Fiction	2012	11	
Non Fiction	2013	10	|  Fiction	2013	13
Non Fiction	2014	28	|  Fiction	2014	30	
Non Fiction	2015	6	|  Fiction	2015	14	
Non Fiction	2016	8	|  Fiction	2016	8	
Non Fiction	2017	9	|  Fiction	2017	6
Non Fiction	2018	15	|  Fiction	2018	5	
Non Fiction	2019	12	|  Fiction	2019	5


4) Which genres have the highest and lowest ratings?

select max("user rating") as highest_rating, 
	   min("user rating") as lowest_rating, 
genre
from amazon
where genre = 'Non Fiction' or genre = 'Fiction'
group by genre;


5) Which genre is most popular and which have earned the most in this category?

select genre, max("User Rating") as max_rating, sum(price) as total_earnings
from amazon
group by genre
order by total_earnings desc, max_rating desc;


6) Which books have earned the most money in each genre?

select genre, sum(price)
from amazon
group by genre


7) Price of books of each genre over the years.

select genre, price, "year"
from amazon
group by genre, "year"
order by "year";


8) How has been the customer reviews by genre over the years?

select genre, reviews, "year"
from amazon
group by genre, "year"  
order by year


9) The price range of books by each genre in the Bestsellers list

select genre, min(price) as min_price, max(price) as max_price, avg(price) as avg_price
from amazon
group by genre


10) Reviews of books by genre for each year

select genre, "year", reviews
from amazon
group by genre, "year"
order by "year" asc, genre asc;


11) The number of books by each genre over years

select genre, "year", count(*) as number_books
from amazon
group by genre, "year"
order by "year" asc, genre asc;


12) Amazon top 50 books by user rating from 2009-19

select name, "User Rating", year
from amazon
group by "User Rating", year
order by "User Rating" desc
limit 50;



