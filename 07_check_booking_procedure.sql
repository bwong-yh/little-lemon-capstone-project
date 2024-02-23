DROP PROCEDURE IF EXISTS check_booking;

DELIMITER //
CREATE PROCEDURE check_booking(date_time DATETIME, table_no INT)
BEGIN
DECLARE booked INT DEFAULT 0;
DECLARE message VARCHAR(100);

SELECT COUNT(booking_id) INTO booked
FROM booking
WHERE booking_date = date_time
	AND table_number = table_no;

IF
booked > 0 THEN
	SET message = CONCAT(
		'Table ', table_no, 
        ' is booked on ', DATE_FORMAT(date_time, '%b, %d'),
        ' at ', DATE_FORMAT(date_time, '%H:%i'));
ELSE
	SET message = 'Slot available';
END IF;

SELECT message AS booking_status;
END//
DELIMITER ;

CALL check_booking('2024-02-25 19:00:00', 1);
CALL check_booking('2024-02-25 19:30:00', 1);