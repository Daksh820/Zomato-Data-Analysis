create database linkedin ;
use linkedin ;

SELECT * FROM zomato_cleaned;


-- Q1. Top 10 cities with the highest number of restaurants
SELECT city, COUNT(*) AS total_restaurants
FROM zomato_cleaned
GROUP BY city
ORDER BY total_restaurants DESC
LIMIT 10;

-- Q2. Average rating by city (minimum 20 restaurants)
SELECT city,
       ROUND(AVG(aggregate_rating),2) AS avg_rating,
       COUNT(*) AS restaurants
FROM zomato_cleaned
GROUP BY city
HAVING COUNT(*) >= 20
ORDER BY avg_rating DESC;

-- Q3. Total restaurants by cuisine
SELECT cuisines,
       COUNT(*) AS total_restaurants
FROM zomato_cleaned
GROUP BY cuisines
ORDER BY total_restaurants DESC
LIMIT 15;

-- Q4. Price range analysis
SELECT price_range,
       COUNT(*) AS restaurants,
       ROUND(AVG(average_cost_for_two),2) AS avg_cost
FROM zomato_cleaned
GROUP BY price_range
ORDER BY price_range;

-- Q5. Top 10 restaurants with the highest votes
SELECT restaurant_name,
       city,
       votes,
       aggregate_rating
FROM zomato_cleaned
ORDER BY votes DESC
LIMIT 10;

-- Q6. Online delivery analysis
SELECT has_online_delivery,
       COUNT(*) AS restaurants,
       ROUND(AVG(aggregate_rating),2) AS avg_rating
FROM zomato_cleaned
GROUP BY has_online_delivery;

-- Q7. Table booking analysis
SELECT has_table_booking,
       COUNT(*) AS restaurants,
       ROUND(AVG(aggregate_rating),2) AS avg_rating
FROM zomato_cleaned
GROUP BY has_table_booking;

-- Q8. Currency-wise restaurant count
SELECT currency,
       COUNT(*) AS total_restaurants
FROM zomato_cleaned
GROUP BY currency
ORDER BY total_restaurants DESC;

-- Q9. Rating category distribution
SELECT rating_text,
       COUNT(*) AS restaurants
FROM zomato_cleaned
GROUP BY rating_text
ORDER BY restaurants DESC;

-- Q10. Top 10 most expensive restaurants
SELECT restaurant_name,
       city,
       average_cost_for_two,
       aggregate_rating
FROM zomato_cleaned
ORDER BY average_cost_for_two DESC
LIMIT 10;







