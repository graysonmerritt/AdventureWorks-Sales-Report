-- Clean InternetSales Table --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE 
-- Makes sure we are only looking 4 years back
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 4
ORDER BY
  OrderDateKey ASC;