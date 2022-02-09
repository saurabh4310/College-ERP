/*
    Gets a summary of orders, such as avg restaurant rating, average driver rating, 
    average delivery charge, number of orders, and total prices.
*/

DROP VIEW IF EXISTS restaurant_order_summary;

/* Create the View */
CREATE VIEW restaurant_order_summary AS
    SELECT 
        o.restaurant_id,
        ROUND(AVG(o.delivery_charge), 2) AS avg_delivery_charge,
        ROUND(o.total_price, 2) AS total_price,
        COUNT(o.order_id) AS number_of_orders,
        AVG(r.Rating) AS Avg_Restaurant_Rating,
        AVG(d.Rating) AS Avg_Driver_Rating
    FROM `order` AS o
    INNER JOIN RestaurantRatingTable AS r 
        ON o.restaurant_id = r.Restaurant_ID
    INNER JOIN DriverRatingTable AS d 
        ON o.driver_id = d.Driver_ID
    GROUP BY r.restaurant_id
    ORDER BY r.restaurant_id;

/* Test the View */
SELECT *
FROM restaurant_order_summary;