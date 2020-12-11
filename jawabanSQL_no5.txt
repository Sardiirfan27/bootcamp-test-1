select "region" ,"country" , "avgtemperature" 
	from (
		select "region", "country", "avgtemperature", "day", "month" , "year" , rank()
			over (partition by "region" order by "avgtemperature" desc) as rn 
			from bootcamp_test_sardi where "day" = 1 and "month" = 10 and "year" = 2012
	) as t2 where rn <=5
