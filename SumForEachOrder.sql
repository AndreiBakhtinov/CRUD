SELECT O.OrderID, sum(O.Quantity) as Quantity_by_Order, sum(P.Price) as Summe, sum(O.Quantity * P.Price) as total_sum FROM [OrderDetails] O -- O - OrderDetails
LEFT JOIN Products P ON O.ProductID = P.ProductID -- P - Products
Group By O.OrderID -- Group by OrderID
Order By O.OrderID 