DROP PROCEDURE IF EXISTS add_booking;
DROP PROCEDURE IF EXISTS update_booking;
DROP PROCEDURE IF EXISTS cancel_booking;
DROP FUNCTION IF EXISTS check_booking;

DELIMITER //
CREATE FUNCTION check_booking(slot DATETIME, table_no INT)
RETURNS TINYINT DETERMINISTIC
BEGIN
DECLARE booked_count TINYINT DEFAULT 0;

SELECT COUNT(booking_id) INTO booked_count
FROM booking
    WHERE booking_date = slot
    AND table_number = table_no;

RETURN booked_count;
END//

CREATE PROCEDURE add_booking(date_time DATETIME, t_id INT, c_id INT)
BEGIN
DECLARE booked TINYINT DEFAULT 0;
DECLARE booking_message VARCHAR(100);

SET booked = check_booking(date_time, t_id);

START TRANSACTION;

IF booked > 0 THEN
    ROLLBACK;
    SET booking_message = 'Time slot and/or table not available';
ELSE
    INSERT INTO booking (booking_date, table_number, customer_id)
    VALUES (date_time, t_id, c_id);

    COMMIT;
    SET booking_message = 'Booking success';
END IF;

SELECT booking_message AS booking_status;
END//

CREATE PROCEDURE update_booking(b_id INT, date_time DATETIME)
BEGIN
    UPDATE booking
    SET booking_date = date_time
    WHERE booking_id = b_id;

    SELECT CONCAT('Booking ', b_id, ' has been updated to: ', DATE_FORMAT(date_time, '%b %d, %Y at %H:%i')) as confirmation;
END//

CREATE PROCEDURE cancel_booking(b_id INT)
BEGIN
    DELETE FROM booking
    WHERE booking_id = b_id;

    SELECT CONCAT('Booking ', b_id, ' has been cancelled') as confirmation;
END//
DELIMITER ;

-- CALL add_booking('2024-02-25 19:30:00', 1, 2);
-- CALL add_booking('2024-02-25 18:30:00', 1, 2);
CALL update_booking(4, '2024-02-28 18:30:00');
CALL cancel_booking(4)