/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [ID]
      ,[Name] as player_name
      ,CASE WHEN [Sex] = 'M' THEN 'MALE' WHEN [Sex] = 'F' then 'female' end as Sex
	  ,[Age]
      ,case when [Age] < 18 then 'under 18'
	        when [Age] between 18 and 25 then '18-25'
			when [Age] between 25 and 30 then '25-30'
			when [Age]>30 THEN  'avove 30' end as [age group]
      ,[Height]
      ,[Weight]
      ,[NOC] as country_code
--	  ,CHARINDEX(' ',Games)-1 as example1
--	  ,CHARINDEX(' ',reverse(Games))-1 as example2
	  ,left(Games,CHARINDEX(' ',Games)-1) as year
--	  ,right(Games,CHARINDEX(' ',reverse(Games))-1) as [season]
--      ,[Games]
--      ,[City]
      ,[Sport]
      ,[Event]
      ,case when [Medal] = 'NA' then 'not registered' else [Medal] end as Medal
  FROM [olympic_games].[dbo].[athletes_event_results]
  where right(Games,CHARINDEX(' ',reverse(Games))-1)= 'Summer'