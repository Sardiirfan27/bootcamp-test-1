SELECT region, COUNT(DISTINCT country) AS TotalCountry
FROM bootcamp_test_sardi
GROUP BY region;
