select "region", "country", "avgtemperature" 
FROM 
(select "region","country" , "avgtemperature", rank ()over 
	(partition by "country" order by "avgtemperature" desc) as rn 
	from bootcamp_test_sardi where "avgtemperature" >100) as t2 
	where rn = 1 order by "region" asc, "country" asc
