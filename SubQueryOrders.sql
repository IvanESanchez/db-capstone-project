SELECT ItemID, Cuisine
FROM menu INNER JOIN menuitem on menu.MenuID = menuitem.MenuID
WHERE menuitem.ItemID = ANY (SELECT MenuItemID FROM itemorder WHERE Quantity > 2)