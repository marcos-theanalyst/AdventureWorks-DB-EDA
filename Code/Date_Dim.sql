SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS [Week #]
  , 
  [EnglishMonthName] AS [Month Name], 
  [MonthNumberOfYear] AS [Month #]
  , 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
ORDER BY 
  [Month #]