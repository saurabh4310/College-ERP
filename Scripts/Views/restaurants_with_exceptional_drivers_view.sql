/*
    Gets the restaurants with 
    exceptional drivers (drivers with at least 4 rating).
*/

DROP VIEW IF EXISTS restaurants_with_exceptional_drivers;

/* Create the View */
CREATE VIEW restaurants_with_exceptional_drivers AS

    SELECT
        r.restaurant_name,
        r.location,
        ROUND(avg(o.delivery_charge), 2) AS avg_delivery_charge
    FROM `order` AS o
    INNER JOIN restaurant r
        ON o.restaurant_id = r.restaurant_id
    INNER JOIN RestaurantRatingTable rrt
        ON r.restaurant_id = rrt.restaurant_id
    WHERE EXISTS
            (SELECT Driver_Id 
            FROM DriverRatingTable AS drt
            WHERE Rating >= 4
                AND drt.Driver_Id = o.Driver_Id
            )
    GROUP BY r.restaurant_name, r.location
    ORDER BY r.restaurant_name, r.location;

/* Test the View */
SELECT *
FROM restaurants_with_exceptional_drivers;