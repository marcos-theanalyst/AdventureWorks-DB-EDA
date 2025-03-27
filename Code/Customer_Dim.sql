SELECT 
	   [CustomerKey]
	  ,FirstName + ' ' + LastName AS [Full Name]
      ,CASE [MaritalStatus] WHEN 'M' THEN 'Married' WHEN 'S' THEN 'Single' END AS [MaritalStatus]
      ,CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender]
      ,[YearlyIncome]
      ,[TotalChildren]
      ,[EnglishEducation] AS Education
      ,[EnglishOccupation] AS Occupation
      ,CASE [HouseOwnerFlag] WHEN 1 THEN 'Yes' WHEN 0 THEN 'No' END AS [House Owner]
      ,[DateFirstPurchase]
      ,[CommuteDistance]
	  ,DimGeography.City AS City
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]
  LEFT JOIN DimGeography ON DimGeography.GeographyKey = DimCustomer.GeographyKey
  ORDER BY
	CustomerKey