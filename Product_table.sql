-- Cleansed Products Table
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
      ,ps.EnglishProductSubcategoryName as [Product Subcategory Name]
      ,pc.EnglishProductCategoryName as [Product CategoryName]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] as [Product color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] as [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] as [Model Name]
      --,[LargePhoto]
      ,[EnglishDescription] as [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
      ,p.status AS Example
      ,IsNull(p.status,'Oudated') as [Product status]
  FROM 
      [AdventureWorksDW2019].[dbo].[DimProduct] p
  Left Join AdventureWorksDW2019.dbo.DimProductSubcategory ps
      on p.ProductSubcategoryKey=ps.ProductSubcategoryKey
  Left Join AdventureWorksDW2019.dbo.DimProductCategory pc
      on pc.ProductCategoryKey=ps.ProductCategoryKey
  Order By
      p.ProductKey ASC
