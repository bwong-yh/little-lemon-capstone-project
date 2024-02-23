DROP PROCEDURE IF EXISTS add_valid_booking;

DELIMITER //
CREATE PROCEDURE add_valid_booking(date_time DATETIME, table_no INT, id INT)
BEGIN
DECLARE rollback_message VARCHAR(100) DEFAULT concat('Table ', table_no, ' is already booked - booking cancelled');
DECLARE commit_message VARCHAR(100) DEFAULT 'Booking success';
DECLARE booked INT DEFAULT 0;

START TRANSACTION;

SELECT COUNT(booking_id) INTO booked
FROM booking
WHERE booking_date = date_time
	AND table_number = table_no;

IF booked > 0 THEN
	ROLLBACK;
    SELECT rollback_message;
ELSE
	INSERT INTO booking (booking_date, table_number, customer_id) 
    VALUES (date_time, table_no, id);
    
    COMMIT;
    SELECT commit_message;
END IF;
END//
DELIMITER ;

CALL add_valid_booking('2024-02-25 19:00:00', 1, 3);
CALL add_valid_booking('2024-02-25 19:30:00', 1, 3);