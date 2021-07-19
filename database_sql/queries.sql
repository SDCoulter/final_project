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

-- Query G7 countries for 2018 emissions (join greenhouse and co2).
SELECT g7.country, g7.greenhouse, co2.co2_emissions
FROM g7_table AS g7
LEFT JOIN cy_co2_emissions AS co2
ON g7.country = co2.country AND g7.year = co2.year
WHERE g7.year = 2018;
