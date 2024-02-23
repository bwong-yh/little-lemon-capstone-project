DROP PROCEDURE IF EXISTS cancel_order;

DELIMITER //
CREATE PROCEDURE cancel_order(id INT)
BEGIN
DELETE FROM customer_order
WHERE order_id = id;

SELECT CONCAT('Order ', id, ' is cancelled') AS confirmation;
END//
DELIMITER ;

CALL cancel_order(13);