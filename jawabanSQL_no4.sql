SELECT "country", "year",max("avgtemperature") AS Maxtemp, min("avgtemperature") AS Mintemp
FROM "public"."bootcamp_test_sardi" WHERE "country" IN ('Canada', 'Malaysia','Turkey') AND "year" IN ('2018')
GROUP BY "country", "year"
;
