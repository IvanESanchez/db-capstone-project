DELIMITER //
CREATE PROCEDURE UpdateBooking(IN BookedID INT, IN bookingDate datetime)
BEGIN
	IF EXISTS (SELECT BiD FROM bookingview WHERE BiD = BookedID) THEN
		UPDATE booking
		SET BookingDate = bookingDate
		WHERE BookingID = BookedID;
        SELECT CONCAT ("Updated booking with ID ", BookedID);
	ELSE
		SELECT "Booking with this ID does not exist";
	END IF;
END //

DELIMITER ;