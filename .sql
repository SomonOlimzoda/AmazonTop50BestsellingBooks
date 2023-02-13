Ask

Based on the data provided we can derive many inferences. One of the key questions can be how Non Fiction differs from Fiction.

Guiding Questions

How do User Ratings differ for Fiction and Non Fiction
How does price differ for Fiction and Non Fiction
Prepare

Data has been scraped from Kaggle and it contains data of Amazon's Top 50 Bestselling Books between 2009 - 2019

The data has been categorized into Fiction and Non Fiction using Goodreads.

To check if the data is 'bad', we are going to follow the ROCCC approach.

Reliable
Original
Comprehensive
Current
Cited
The data which doesn't follow ROCCC is bad data.

Process

In this step, we are going to work on the data using correct tools.

This step ensures that the data is cleaned and transformed for analysis.

Since the data is clean and compact, we will be using R to run quick analysis and summarize our findings using visualizations.

We will load the data first using tidyverse package of R.


Analyze

Now the data is clean and formatted, we can run descriptive analysis on it which includes finding mean, median.

We will be summarising User Rating, Price and Reviews across the entire dataset and later on we will comparing it with sub-groups of Fiction and Non Fiction.


Average Rating : 4.6
Max Rating : 4.9
Min Rating : 3.3


Average Price : 13.1
Max Price : 105
Min Price : 0


Average No of Reviews : 11953
Max No of Reviews : 87841
Min No of reviews : 37


Fiction Non Fiction 
240         310 


Key takeways from the above analysis.

Non Fiction books are costlier than fiction books.
Average Rating tends to be similar to the average irrespective of the genre.
People review more fiction books than Non Fiction


------------------------------------------------------------------------------------------------------------------------------------------------------------------


About dataset
This dataset contain 550 books of FICTION and NON-FICTION genere.

Basic informations about this dataset:

550 rows

7 columns

Column names:

Name: name of the book,
Author: book author,
User rating: Ratings,
Reviews: Number of written reviews
Price: The price of the book.
Year: years
Genre: fiction, non-fiction

Key task
Get meaningful insights about which type of books are likely to be in demand in future.



First and foremost here, we do import file and then look at the data before any actions taken.








