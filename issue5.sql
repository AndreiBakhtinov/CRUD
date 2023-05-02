-- Выбираем поля из табдицы о (orders) o.orderDate, orderDate, из таблицы с (customers) customerName
SELECT o.orderId, c.customerName, o.orderDate 
-- Из таблицы Orders
FROM Orders o
-- Делаем левое слияние с таблицей customers для получения имен клиентов
LEFT JOIN customers c ON o.CustomerID=c.CustomerID
-- сортируем по убыванию по полю OrderDate таблицы Orders
ORDER BY o.OrderDate DESC
-- берем 5 с наибольшей датой
LIMIT 5;