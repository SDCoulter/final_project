-- MAIN DATASET --
CREATE TABLE main_ds (
	country VARCHAR NOT NULL,
	year INT NOT NULL,
	life_ladder FLOAT,
	temperature FLOAT,
	clean_water FLOAT,
	greenhouse FLOAT,
	population FLOAT,
	pm25 FLOAT,
	co2_emissions FLOAT
);

-- TABLES FOR COUNTRY-YEAR INDEXES --
CREATE TABLE cy_clean_water (
  country VARCHAR NOT NULL,
  year int NOT NULL,
  clean_water FLOAT
);

CREATE TABLE cy_co2_emissions (
  country VARCHAR NOT NULL,
  year int NOT NULL,
  co2_emissions FLOAT
);

CREATE TABLE cy_greenhouse (
  country VARCHAR NOT NULL,
  year int NOT NULL,
  greenhouse FLOAT
);

CREATE TABLE cy_life_ladder (
  country VARCHAR NOT NULL,
  year int NOT NULL,
  life_ladder FLOAT
);

CREATE TABLE cy_pm25 (
  country VARCHAR NOT NULL,
  year int NOT NULL,
  pm25 FLOAT
);

CREATE TABLE cy_population (
  country VARCHAR NOT NULL,
  year int NOT NULL,
  population FLOAT
);

CREATE TABLE cy_temperature (
  country VARCHAR NOT NULL,
  year int NOT NULL,
  temperature FLOAT
);

-- TABLES FOR COUNTRY ONLY INDEXES --
CREATE TABLE country_clean_water (
  country VARCHAR NOT NULL,
  "2010" FLOAT,
  "2011" FLOAT,
  "2012" FLOAT,
  "2013" FLOAT,
  "2014" FLOAT,
  "2015" FLOAT,
  "2016" FLOAT,
  "2017" FLOAT,
  "2018" FLOAT,
  "2019" FLOAT,
  PRIMARY KEY (country)
);

CREATE TABLE country_co2_emissions (
  country VARCHAR NOT NULL,
  "2010" FLOAT,
  "2011" FLOAT,
  "2012" FLOAT,
  "2013" FLOAT,
  "2014" FLOAT,
  "2015" FLOAT,
  "2016" FLOAT,
  "2017" FLOAT,
  "2018" FLOAT,
  "2019" FLOAT,
  PRIMARY KEY (country)
);

CREATE TABLE country_greenhouse (
  country VARCHAR NOT NULL,
  "2010" FLOAT,
  "2011" FLOAT,
  "2012" FLOAT,
  "2013" FLOAT,
  "2014" FLOAT,
  "2015" FLOAT,
  "2016" FLOAT,
  "2017" FLOAT,
  "2018" FLOAT,
  PRIMARY KEY (country)
);

CREATE TABLE country_life_ladder (
  country VARCHAR NOT NULL,
  "2010" FLOAT,
  "2011" FLOAT,
  "2012" FLOAT,
  "2013" FLOAT,
  "2014" FLOAT,
  "2015" FLOAT,
  "2016" FLOAT,
  "2017" FLOAT,
  "2018" FLOAT,
  "2019" FLOAT,
  "2021" FLOAT,
  PRIMARY KEY (country)
);

CREATE TABLE country_pm25 (
  country VARCHAR NOT NULL,
  "2010" FLOAT,
  "2011" FLOAT,
  "2012" FLOAT,
  "2013" FLOAT,
  "2014" FLOAT,
  "2015" FLOAT,
  "2016" FLOAT,
  "2017" FLOAT,
  "2018" FLOAT,
  "2019" FLOAT,
  PRIMARY KEY (country)
);

CREATE TABLE country_population (
  country VARCHAR NOT NULL,
  "2010" FLOAT,
  "2011" FLOAT,
  "2012" FLOAT,
  "2013" FLOAT,
  "2014" FLOAT,
  "2015" FLOAT,
  "2016" FLOAT,
  "2017" FLOAT,
  "2018" FLOAT,
  "2019" FLOAT,
  PRIMARY KEY (country)
);

CREATE TABLE country_temperature (
  country VARCHAR NOT NULL,
  "2010" FLOAT,
  "2011" FLOAT,
  "2012" FLOAT,
  "2013" FLOAT,
  "2014" FLOAT,
  "2015" FLOAT,
  "2016" FLOAT,
  "2017" FLOAT,
  "2018" FLOAT,
  "2019" FLOAT,
  PRIMARY KEY (country)
);
