SELECT O.OrderID, sum(P.Price * o.Quantity) as sum FROM [OrderDetails] O -- O - OrderDetails
LEFT JOIN Products P ON O.ProductID = P.ProductID -- P - Products
Group By O.OrderID