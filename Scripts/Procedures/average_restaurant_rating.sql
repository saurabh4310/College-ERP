/*
    This stored procedure provides average restaurant ratings.
    
    You can provide a restaurant_id to filter the ratings for, 
    or pass in NULL for an average rating for ALL restaurants.
*/

USE `Campus_Eats_Fall2020`;
DROP PROCEDURE IF EXISTS `average_restaurant_ratings`;

DELIMITER $$

/* Create the Procedure */
CREATE PROCEDURE `average_restaurant_ratings` (
    IN search_restaurant_id INT
)

BEGIN
    IF search_restaurant_id IS NULL THEN
        SELECT AVG (RATING)
        FROM RestaurantRatingTable;
    ELSE
        SELECT AVG (RATING)
        FROM RestaurantRatingTable
        WHERE restaurant_id = search_restaurant_id;
    END IF;
END$$

DELIMITER ;

/* Test the Procedure */
# Call for average rating for ALL restaurants.
CALL average_restaurant_ratings (NULL);

# Call for average rating for only the restaurant with an ID of 3.
CALL average_restaurant_ratings (3);