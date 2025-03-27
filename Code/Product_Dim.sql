SELECT 
  [DimProduct].[ProductKey], 
  [DimProduct].[ProductAlternateKey] AS ProductItemCode, 
  [DimProductCategory].[EnglishProductCategoryName] AS [Category], -- Joined Subcategory Table 
  [DimProductSubcategory].[EnglishProductSubcategoryName] AS [Sub-Category], -- Joined Category Table 
  [DimProduct].[EnglishProductName] AS [Product Name], 
  [DimProduct].[Color] AS [Product Color], 
  [DimProduct].[Size], 
  [DimProduct].[ProductLine], 
  [DimProduct].[ModelName], 
  [DimProduct].[EnglishDescription] AS [Product Description], 
  ISNULL(
    [DimProduct].[Status], 'Outdated'
  ) AS [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] 
  LEFT JOIN [DimProductSubcategory] on DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey 
  LEFT JOIN [DimProductCategory] on DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey 
ORDER BY 
  DimProduct.ProductKey
