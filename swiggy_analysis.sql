USE swiggydb;
SELECT * FROM swiggy
LIMIT 10;
DESCRIBE swiggy;
-- 1. Total Restaurants
SELECT COUNT(*) AS Total_Restaurants
FROM swiggy;
-- 2. Total Cities
SELECT COUNT(DISTINCT City) AS Total_Cities
FROM swiggy;
-- 3. Restaurants in each City
SELECT City, COUNT(*) AS Restaurant_Count
FROM swiggy
GROUP BY City
ORDER BY Restaurant_Count DESC;
-- 4. Restaurants in each Area
SELECT Area, COUNT(*) AS Restaurant_Count
FROM swiggy
GROUP BY Area
ORDER BY Restaurant_Count DESC
LIMIT 10;
-- 6. Lowest Rated Restaurants
SELECT Restaurant, 'Avg ratings'
FROM swiggy
ORDER BY 'Avg ratings' ASC
LIMIT 10;
-- 7. Average Rating
SELECT ROUND(AVG('Avg ratings'),2) AS Avg_Rating
FROM swiggy;
-- 8. Restaurants Above Average Rating
SELECT Restaurant, 'Avg ratings'
FROM swiggy
WHERE 'Avg_ratings' >
(SELECT AVG('Avg ratings') FROM swiggy);
-- 9. Top 10 Most Expensive Restaurants
SELECT Restaurant, Price
FROM swiggy
ORDER BY Price DESC
LIMIT 10;
-- 10. Cheapest Restaurants
SELECT Restaurant, Price
FROM swiggy
ORDER BY Price ASC
LIMIT 10;
-- 11. Average Price by City
SELECT City, ROUND(AVG(Price),2) AS Avg_Price
FROM swiggy
GROUP BY City
ORDER BY Avg_Price DESC;
-- 12. Restaurants Above Average Price
SELECT Restaurant, Price
FROM swiggy
WHERE Price >
(SELECT AVG(Price) FROM swiggy);
-- 13. Food Type Distribution
SELECT 'Food type', COUNT(*) AS Total
FROM swiggy
GROUP BY 'Food type'
ORDER BY Total DESC;
-- 14. Fastest Delivery
SELECT Restaurant, 'Delivery time'
FROM swiggy
ORDER BY 'Delivery time' ASC
LIMIT 10;
-- 15. Slowest Delivery
SELECT Restaurant, 'Delivery time'
FROM swiggy
ORDER BY 'Delivery time' DESC
LIMIT 10;
-- 16. Average Delivery Time
SELECT ROUND(AVG('Delivery time'),2) AS Avg_Delivery_Time
FROM swiggy;
-- 17. Most Reviewed Restaurants
SELECT Restaurant,`Total ratings`
FROM swiggy
ORDER BY `Total ratings` DESC
LIMIT 10;
-- 18. Restaurants With More Than 1000 Ratings
SELECT Restaurant, `Total ratings`
FROM swiggy
WHERE `Total ratings` > 1000;
-- 19. Highest Rated Restaurant in Each City
SELECT City,
MAX(`Avg ratings`) AS Highest_Rating
FROM swiggy
GROUP BY City;
-- 20. Rank Restaurants by Rating
SELECT Restaurant,
`Avg ratings`,
RANK() OVER(ORDER BY `Avg ratings` DESC) AS Ranking
FROM swiggy;






