CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `littlelemondb`.`orders_view` AS
    SELECT 
        `littlelemondb`.`itemorder`.`OrderID` AS `Order ID`,
        `littlelemondb`.`customer`.`CustomerName` AS `Customer Name`,
        `littlelemondb`.`menu`.`Cuisine` AS `Food Cuisine`,
        `littlelemondb`.`menuitem`.`ItemName` AS `Food Name`,
        `littlelemondb`.`itemorder`.`OrderDate` AS `Order Time`,
        `littlelemondb`.`itemorder`.`Quantity` AS `Order Quantity`,
        `littlelemondb`.`itemorder`.`TotalCost` AS `Total Order Cost`
    FROM
        (((`littlelemondb`.`itemorder`
        JOIN `littlelemondb`.`customer`)
        JOIN `littlelemondb`.`menu`)
        JOIN `littlelemondb`.`menuitem`)
