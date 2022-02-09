/*
    Stored procedure to get statistics on a restaurant, 
    given a restaurant id.
*/

USE `Campus_Eats_Fall2020`;
DROP PROCEDURE IF EXISTS `get_restaurant_statistics`;

DELIMITER $$

/* Create the Procedure */
CREATE PROCEDURE `get_restaurant_statistics` 
(
    IN search_restaurant_id INT
)
BEGIN
    SELECT 
        COUNT(*) AS num_orders,
        ROUND(SUM(total_price + delivery_charge), 2) AS revenue,
        ROUND(AVG(total_price), 2) AS avg_price,
        MIN(total_price) AS min_price,
        MAX(total_price) AS max_price,
        ROUND(AVG(delivery_charge), 2) AS avg_delivery_charge,
        MIN(delivery_charge) AS min_delivery_charge,
        MAX(delivery_charge) AS max_delivery_charge,
        COUNT(rrt.rating) AS num_restaurant_ratings,
        ROUND(AVG(rrt.rating), 2) AS avg_restaurant_rating,
        MIN(rrt.rating) AS min_restaurant_rating,
        MAX(rrt.rating) AS max_restaurant_rating,
        COUNT(drt.rating) AS num_driver_ratings,
        ROUND(AVG(drt.rating), 2) AS avg_driver_rating,
        MIN(drt.rating) AS min_driver_rating,
        MAX(drt.rating) AS max_driver_rating
    FROM `order` AS o
    INNER JOIN DriverRatingTable AS drt
        ON o.driver_id = drt.driver_id
    INNER JOIN RestaurantRatingTable AS rrt
        ON o.restaurant_id = rrt.restaurant_id
    WHERE o.restaurant_id = search_restaurant_id
    GROUP by o.restaurant_id;
END$$

DELIMITER ;

/* Test the Procedure */
CALL get_restaurant_statistics (7);