DROP PROCEDURE IF EXISTS get_max_quantity;

DELIMITER //
CREATE PROCEDURE get_max_quantity()
BEGIN
SELECT MAX(quantity) AS max_quantity 
FROM customer_order;
END//
DELIMITER ;

CALL get_max_quantity();