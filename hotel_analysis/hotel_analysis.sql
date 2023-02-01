with hotels as ( 
select * from HotelAnalysis.dbo.['2018$']
union
select * from HotelAnalysis.dbo.['2019$']
union
select * from HotelAnalysis.dbo.['2020$'])

select * from hotels
left join HotelAnalysis.dbo.market_segment$
on hotels.market_segment=market_segment$.market_segment
left join HotelAnalysis.dbo.meal_cost$
on hotels.meal=meal_cost$.meal