SELECT O.OrderID, SUM(P.Price) AS total_price
FROM OrderDetails AS O
LEFT JOIN Products AS P ON O.ProductID = P.ProductID
GROUP BY O.OrderID;