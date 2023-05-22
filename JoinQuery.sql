SELECT customer.CustomerID AS 'Customer ID', customer.CustomerName AS 'Customer Name', 
itemorder.OrderID AS 'Order ID', itemorder.TotalCost AS 'Total Cost',
menu.Cuisine, menuitem.ItemName AS 'Item Name', menuitem.ItemType AS 'Item Type'
FROM customer INNER JOIN booking ON customer.CustomerID = booking.CustomerID
INNER JOIN itemorder ON booking.BookingID = itemorder.BookingID INNER JOIN menuitem 
ON itemorder.MenuItemID = menuitem.ItemID INNER JOIN menu ON menuitem.MenuID = menu.MenuID
WHERE itemorder.TotalCost > 150
ORDER BY 4 ASC
LIMIT 4