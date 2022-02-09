/*
    Gets the best restaurants in the system, 
    as well as the max price associated with that restaurant.
*/

DROP VIEW IF EXISTS best_restaurants_view;

/* Create the View */
CREATE VIEW best_restaurants_view AS

    WITH get_restaurants AS (
        SELECT
            r.restaurant_id, 
            ROUND(o.total_price, 2) AS total_price,
            rt.rating
        FROM restaurant AS r
        INNER JOIN `order` AS o 
            ON r.restaurant_id= o.restaurant_id
        INNER JOIN RestaurantRatingTable AS rt
            ON r.Restaurant_ID = rt.Restaurant_ID
        ORDER BY r.restaurant_id
    )

    SELECT restaurant_id,
        MAX(restaurant.total_price) as max_price,
        AVG(restaurant.rating) as avg_rating
    FROM get_restaurants AS restaurant
    WHERE restaurant.rating > 0
    GROUP BY restaurant_id
    ORDER BY restaurant.rating DESC;

/* Test the View */
SELECT *
FROM best_restaurants_view;