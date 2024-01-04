-- Cleansed Date table
SELECT  
       [DateKey]
      ,[FullDateAlternateKey] as Date
      --,[DayNumberOfWeek]
      --,[EnglishDayNameOfWeek]
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] as WeekNr
      ,[EnglishMonthName] as Month
      ,Left([EnglishMonthName],3) MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] as MonthNo
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear >= 2019