/*
	Stored procedure to add an order.
*/

USE `Campus_Eats_Fall2020`;
DROP PROCEDURE IF EXISTS `add_order`;

DELIMITER $$

/* Create the Procedure */
CREATE PROCEDURE `add_order` (
    IN added_person_id INT,
    IN added_delivery_id INT,
    IN added_location_id INT,
    IN added_driver_id INT,
    IN added_restaurant_id INT,
    IN added_total_price FLOAT,
    IN added_delivery_charge FLOAT
)
BEGIN
	INSERT INTO `order` (person_id, delivery_id, location_id, driver_id, restaurant_id, total_price, delivery_charge) 
	VALUES (
		added_person_id, 
		added_delivery_id, 
		added_location_id, 
		added_driver_id, 
		added_restaurant_id, 
		added_total_price, 
		added_delivery_charge
    );
END$$

DELIMITER ;

/* Test the Procedure */
CALL add_order (7, 2, 4, 5, 3, 15.86, 3.25);