DROP PROCEDURE IF EXISTS get_max_quantity;

DELIMITER //
CREATE PROCEDURE get_max_quantity()
BEGIN
SELECT quantity AS max_quantity_in_customer_order
FROM customer_order
WHERE quantity = (SELECT MAX(quantity) FROM customer_order);
END//
DELIMITER ;

CALL get_max_quantity();