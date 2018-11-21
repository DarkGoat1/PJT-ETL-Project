Smogon Tier Scrape has a JN for the webscraper I used to scrape smogon's webpages. I had to use 5 different websites instead
of the main one because the main one dynamically loads data using JS and i can't scrape the whole page at once. The ETL is
just a demonstration of me loading the tier and base stat data into a MySQL database. You can see the data joined together using
this SQL script:

select * 
FROM tiers t
 LEFT JOIN basestats bs ON t.Pokemon = bs.name

