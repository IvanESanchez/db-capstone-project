DELIMITER //
CREATE PROCEDURE CheckBooking(IN bookingDate datetime, IN tableNo INT)
BEGIN
    IF EXISTS (SELECT BookedT FROM bookingview WHERE BookedD = bookingDate AND BookedT = TableNo) THEN
		SELECT CONCAT ("Table ", tableNo, " is booked during the specified time and date.");
	ELSE
		SELECT CONCAT ("Table ", tableNo, " is available during that the specified time and date.");
	END IF;
END //
DELIMITER ;
