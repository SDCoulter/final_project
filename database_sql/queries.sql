-- Country/Year Populations and Clean Water Access --
SELECT cyp.country, cyp.year, cyp.population, cycw.clean_water
INTO cy_pop_cw
FROM cy_population AS cyp
LEFT JOIN cy_clean_water AS cycw
ON cyp.country = cycw.country AND cyp.year = cycw.year;

SELECT * FROM cy_pop_cw;


-- G7 Countries.
SELECT *
INTO g7_table
FROM cy_greenhouse
WHERE country = 'United States' OR
		country = 'United Kingdom' OR
		country = 'Canada' OR
		country = 'France' OR
		country = 'Germany' OR
		country = 'Italy' OR
		country = 'Japan';
-- Remove the greenhouse column so only the countries and years remain.
ALTER TABLE g7_table
DROP COLUMN greenhouse;


-- Create the main table through multiple joins.
-- Include unique ID.
SELECT row_number() OVER () AS id,
		cw.country,
		cw.year,
		cw.clean_water,
		co2.co2_emissions,
		gg.greenhouse,
		ll.life_ladder,
		pm.pm25,
		pop.population,
		temps.temperature
INTO main_joined_table
FROM cy_clean_water AS cw
LEFT JOIN cy_co2_emissions AS co2
	ON cw.country = co2.country AND cw.year = co2.year
LEFT JOIN cy_greenhouse AS gg
	ON cw.country = gg.country AND cw.year = gg.year
LEFT JOIN cy_life_ladder AS ll
	ON cw.country = ll.country AND cw.year = ll.year
LEFT JOIN cy_pm25 AS pm
	ON cw.country = pm.country AND cw.year = pm.year
LEFT JOIN cy_population AS pop
	ON cw.country = pop.country AND cw.year = pop.year
LEFT JOIN cy_temperature AS temps
	ON cw.country = temps.country AND cw.year = temps.year;


-- Join data to G7 table query air quality for 2012.
SELECT g7.country, ds.pm25, ds.co2_emissions, ds.greenhouse
FROM g7_table AS g7
LEFT JOIN main_joined_table AS ds
	ON g7.country = ds.country AND g7.year = ds.year
WHERE g7.year = 2012;
