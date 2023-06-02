DELIMITER //
CREATE PROCEDURE CancelBooking(IN BookedID INT)
BEGIN
	IF EXISTS (SELECT BiD FROM bookingview WHERE BiD = BookedID) THEN
		DELETE FROM booking
		WHERE BookingID = BookedID;
        SELECT CONCAT ("Cancelled booking with ID ", BookedID);
	ELSE
		SELECT "Booking with this ID does not exist";
	END IF;
END //

DELIMITER ;