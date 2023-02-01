--cleansed dim_dateTable--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as date, 
  --[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] as day, 
  --[SpanishDayNameOfWeek], 
  --[FrenchDayNameOfWeek], 
  --[DayNumberOfMonth], 
  --[DayNumberOfYear], 
  [WeekNumberOfYear] as weekNr, 
  [EnglishMonthName] as month,
  LEFT(EnglishMonthName,3)as monthshort,
  --[SpanishMonthName], 
  --[FrenchMonthName], 
  [MonthNumberOfYear] as monthNr, 
  [CalendarQuarter] as quater, 
  [CalendarYear] as year 
  --[CalendarSemester] 
  --[FiscalQuarter] 
  --[FiscalYear] 
  --[FiscalSemester] 
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear>=2019
 