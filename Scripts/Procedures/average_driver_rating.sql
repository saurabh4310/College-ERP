/*
    This stored procedure provides average ratings for Driver given the Driver ID.
*/

USE `Campus_Eats_Fall2020`;
DROP PROCEDURE IF EXISTS `average_driver_ratings`;

DELIMITER $$

/* Create the Procedure */
CREATE PROCEDURE `average_driver_ratings` 
(
    IN search_driver_id INT
)

BEGIN
    IF search_driver_id IS NULL THEN
        SELECT AVG (Rating)
        FROM DriverRatingTable;
    ELSE
        SELECT AVG (Rating)
        FROM DriverRatingTable
        WHERE Driver_ID = search_driver_id;
    END IF;
END$$

DELIMITER ;

/* Test the Procedure */
# Call for average rating for ALL Drivers.
CALL average_driver_ratings (NULL);

# Call for average rating for a given Driver ID.
CALL average_driver_ratings(1);