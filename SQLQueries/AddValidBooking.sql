DELIMITER //
CREATE PROCEDURE AddValidBooking(IN bookingDate datetime, IN tableNo INT, IN caller INT, IN employee INT)
BEGIN
	START TRANSACTION;
    CALL CheckBookingAvailability(bookingDate, tableNo, flag);
    IF flag THEN
		SELECT CONCAT ("Table ", tableNo, " is available during the specified time and date. -- Booking has been sucessfully added.");
		INSERT INTO Booking(BookingDate, TableNumber, CustomerID, StaffID)
        VALUES (bookingDate, tableNo, caller, employee);
        COMMIT;
	ELSE
        SELECT CONCAT ("Table ", tableNo, " is booked during the specified time and date. -- Booking request has been cancelled.");
        ROLLBACK;
	END IF;
		
END //
DELIMITER ;