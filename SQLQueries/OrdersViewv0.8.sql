CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `orders_viewv0.8` AS
    SELECT 
        `itemorder`.`OrderID` AS `Order ID`,
        `customer`.`CustomerName` AS `Customer Name`,
        `menu`.`Cuisine` AS `Food Cuisine`,
        `menuitem`.`ItemName` AS `Food Name`,
        `itemorder`.`OrderDate` AS `Order Time`,
        `itemorder`.`Quantity` AS `Order Quantity`,
        `itemorder`.`TotalCost` AS `Total Order Cost`
    FROM
        (((`itemorder`
        JOIN `customer`)
        JOIN `menu`)
        JOIN `menuitem`)