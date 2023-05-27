DELIMITER //
CREATE PROCEDURE AddBooking(IN BookedID INT, IN caller INT, IN bookingDate datetime, IN tableNo INT, IN employee INT)
BEGIN

	IF EXISTS (SELECT BiD FROM bookingview WHERE BiD = BookedID) THEN
		SELECT CONCAT ("Booking ID ", BookedID , " already exists. Adding it as a new ID");
        CALL AddValidBooking(bookingDate, tableNo, caller, employee);
	ELSE
		SELECT CONCAT ("Adding booking as ID ", BookedID);
		INSERT INTO Booking(BookingID, BookingDate, TableNumber, CustomerID, StaffID)
        VALUES (BookedID, bookingDate, tableNo, caller, employee);
	END IF;
		
END //
DELIMITER ;