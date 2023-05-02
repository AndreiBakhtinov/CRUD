SELECT O.OrderID, sum(P.Price *O.Quantity) as sum FROM [OrderDetails] O 
LEFT JOIN Products P ON O.ProductID = P.ProductID 
Group By O.OrderID