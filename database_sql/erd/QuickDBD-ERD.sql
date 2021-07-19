-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "country_year" (
    "id" int   NOT NULL,
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    CONSTRAINT "pk_country_year" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "cy_clean_water" (
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    "clean_water" float   NOT NULL
);

CREATE TABLE "cy_co2_emissions" (
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    "co2_emissions" float   NOT NULL
);

CREATE TABLE "cy_greenhouse" (
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    "greenhouse" float   NOT NULL
);

CREATE TABLE "cy_life_ladder" (
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    "life_ladder" float   NOT NULL
);

CREATE TABLE "cy_pm25" (
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    "pm25" float   NOT NULL
);

CREATE TABLE "cy_population" (
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    "population" float   NOT NULL
);

CREATE TABLE "cy_temperature" (
    "country" varchar   NOT NULL,
    "year" int   NOT NULL,
    "temperature" float   NOT NULL
);

ALTER TABLE "cy_clean_water" ADD CONSTRAINT "fk_cy_clean_water_country_year" FOREIGN KEY("country", "year")
REFERENCES "country_year" ("country", "year");

ALTER TABLE "cy_co2_emissions" ADD CONSTRAINT "fk_cy_co2_emissions_country_year" FOREIGN KEY("country", "year")
REFERENCES "country_year" ("country", "year");

ALTER TABLE "cy_greenhouse" ADD CONSTRAINT "fk_cy_greenhouse_country_year" FOREIGN KEY("country", "year")
REFERENCES "country_year" ("country", "year");

ALTER TABLE "cy_life_ladder" ADD CONSTRAINT "fk_cy_life_ladder_country_year" FOREIGN KEY("country", "year")
REFERENCES "country_year" ("country", "year");

ALTER TABLE "cy_pm25" ADD CONSTRAINT "fk_cy_pm25_country_year" FOREIGN KEY("country", "year")
REFERENCES "country_year" ("country", "year");

ALTER TABLE "cy_population" ADD CONSTRAINT "fk_cy_population_country_year" FOREIGN KEY("country", "year")
REFERENCES "country_year" ("country", "year");

ALTER TABLE "cy_temperature" ADD CONSTRAINT "fk_cy_temperature_country_year" FOREIGN KEY("country", "year")
REFERENCES "country_year" ("country", "year");

