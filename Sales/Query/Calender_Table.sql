--Cleaned Dim_Calender
SELECT 
[DateKey],
[FullDateAlternateKey] AS 'Date',
      --,[DayNumberOfWeek]
[EnglishDayNameOfWeek] AS 'Day',
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
[WeekNumberOfYear] AS 'WeekNo.',
[EnglishMonthName] AS 'Month',
LEFT([EnglishMonthName],3) AS 'Month Short',
      --,[SpanishMonthName]
      --,[FrenchMonthName]
[MonthNumberOfYear] AS 'MonthNo.',
[CalendarQuarter] AS 'Quarter',
[CalendarYear] AS 'Year'
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
FROM
DimDate
WHERE
CalendarYear >= 2022
ORDER BY
DateKey