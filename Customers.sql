-- Cleansed Customer Table 
SELECT 
       c.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] as 'First name' 
      ,c.[LastName] as 'Last name'
      , c.firstname +' '+ c.lastname as 'Full name'
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      , case when c.Gender='M' then 'Male' else 'Female' end Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase]
      --,[CommuteDistance]
      ,g.[city] as City
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] C
  left join 
      AdventureWorksDW2019.dbo.DimGeography G
  ON 
      c.GeographyKey=g.GeographyKey
  ORDER BY 
      c.[customerkey] ASC

