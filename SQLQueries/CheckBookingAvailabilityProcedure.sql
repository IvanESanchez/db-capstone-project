DELIMITER //
CREATE PROCEDURE CheckBookingAvailability(IN bookingDate datetime, IN tableNo INT, OUT available boolean)
BEGIN
    IF EXISTS (SELECT BookedT FROM bookingview WHERE BookedD = bookingDate AND BookedT = TableNo) THEN
        SET available = FALSE;
	ELSE
        SET available = TRUE;
	END IF;
END //
DELIMITER ;