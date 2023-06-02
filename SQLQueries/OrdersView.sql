CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ordersview` AS
    SELECT 
        `itemorder`.`OrderID` AS `Order ID`,
        `itemorder`.`Quantity` AS `Quantity`,
        `itemorder`.`TotalCost` AS `Total Cost`
    FROM
        `itemorder`