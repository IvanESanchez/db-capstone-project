DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT *
    FROM itemorder
    WHERE Quantity = (SELECT MAX(Quantity) FROM itemorder);
END //
DELIMITER ;
