/* Indexes for the most referenced columns. */

CREATE INDEX delivery_index
ON delivery (delivery_id, driver_id, vehicle_id); 

CREATE INDEX driver_index
ON driver (driver_id, student_id); 

CREATE INDEX driver_rating_index
ON DriverRatingTable (driver_id); 

CREATE INDEX faculty_index
ON faculty (person_id, title); 

CREATE INDEX location_index
ON location (location_id, location_name); 

CREATE INDEX order_index
ON `order` (order_id, person_id, delivery_id, location_id, driver_id, restaurant_id); 

CREATE INDEX person_index
ON person (person_id, person_name); 

CREATE INDEX restaurant_index
ON restaurant (restaurant_id, restaurant_name); 

CREATE INDEX restaurant_rating_index
ON RestaurantRatingTable (restaurant_id); 

CREATE INDEX staff_index
ON staff (staff_id, person_id); 

CREATE INDEX student_index
ON student (student_id, person_id); 

CREATE INDEX vehicle_index
ON vehicle (vehicle_id);