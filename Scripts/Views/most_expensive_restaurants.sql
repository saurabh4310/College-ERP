/*
    Gets the most expensive restaurants as well as the ranking.
*/

DROP VIEW IF EXISTS most_expensive_restaurants;

/* Create the View */
CREATE VIEW most_expensive_restaurants AS

    SELECT r.restaurant_id, 
        r.restaurant_name, 
        o.total_price,
        RANK() OVER (ORDER BY total_price DESC) AS Rank_Num
    FROM restaurant AS r
    INNER JOIN `order` AS o 
        ON r.restaurant_id= o.restaurant_id
    GROUP BY r.restaurant_id, total_price
    ORDER BY Rank_Num;

/* Test the View */
SELECT *
FROM most_expensive_restaurants;