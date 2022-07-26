-- Clean Customer Table --
SELECT 
  c.customerkey AS CustomerKey, 
  c.firstname AS [First Name], 
  c.lastname AS [Last Name], 
  -- Combined to Create Full Name
  c.firstname + ' ' + lastname AS [Full Name], 
  CASE c.gender 
  WHEN 'M' THEN 'Male' 
  WHEN 'F' THEN 'Female' 
  END AS Gender,
  c.datefirstpurchase AS DateFirstPurchase, 
  -- Comes from the Geography Table
  g.city AS [Customer City]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC;