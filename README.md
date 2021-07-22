# Final Project - Climate Change and Effects on Human Well-Being (Quality of Life)

## Overview

This is the repository for Module 20, the ***Final Project***, of the University of Toronto Data Analysis Bootcamp Course. Work created and organized by Akinsola Salami, Jeffrey Au, Suleiman Barekzai, Shaun Coulter and Najeeb Amlani.

## Communication Protocols

We currently plan to do our analysis with the use of the following tools (more tools will be added as needed):

* **Python**
  * Pandas
  * NumPy
  * TensorFlow
  * scikit-learn
  * Matplotlib
* **JavaScript**
  * Mapbox
  * Leaflet
  * Plotly
  * D3
* **SQL**
  * PostgreSQL
  * pgAdmin
* Tableau
* Web Development Tools (HTML/CSS)

## Our Data Story

We are setting out to look at how the environment around us affects how happy we are, and how strong this effect is. We will do this by looking at the environmental variables of countries, and seeing if we can use them to predict the `Life Ladder` target variable from the **World Happiness Index**.

Is the environment a major source of the quality of life for humanity? Or is it merely a small part of a much larger story?

## Potential Independent Variables

* **Weather/Climate**:
  * Min and Max Temperature
  * Humidity
  * Rainfall (Precipitation)
  * Wind Speed
  * Hours of Daylight
  * Quantity of Natural Disasters
  * Solar Radiation/UV Index
* **Air Quality**:
  * Visibility (Smog/Fog)
  * ***OpenWeatherMap API***
    * Carbon Monoxide - **CO**
    * Nitric Oxide - **NO**
    * Nitrogen Dioxide - **NO<sub>2</sub>**
    * Ozone - **O<sub>3</sub>**
    * Sulfur Dioxide - **SO<sub>2</sub>**
    * Fine Particulate Matter - **PM2.5**
    * Coarse Particulate Matter - **PM10**
    * Ammonia - **NH<sub>3</sub>**
* **Greenhouse Gases**:
  * Emissions
  * _more variable data required_
* **Water Quality**:
  * Tap Water Quality
  * Mineral Contaminants
  * Fresh Water Supply

## Dependent Variable

Our dependent variable will be the Life Ladder value in the World Happiness Index. In this index the value is produced from the measurements of the other categories which include:

* Log GDP per Capita
* Social Support
* Healthy Life Expectancy at Birth
* Freedom to Make Life Choices
* Generosity
* Perceptions of Corruption
* Positive Affect
* Negative Affect

This dataset was taken from Kaggle and can be found by [clicking here](https://www.kaggle.com/ajaypalsinghlo/world-happiness-report-2021?select=world-happiness-report.csv).

## Presentation and Visualizations

Using the JavaScript tools mentioned above along with data wrangling, we will produce visualizations detailing the variables we found and plot them on maps. This will give us a way to look for correlation amongst the independent variables, while also allowing a user to find interesting information of their own. We will also include the target variables to see if we can visually show our overarching data story. These maps, along with any required graphs will be contained on an interactive web page for all to use.

## Database

Our data will be put together with the use of Python and Pandas, and a database will be created with pgAdmin and Postgres. We will include schema information, as well as queries that produce the data we analyse.

## Machine Learning

Our goal in the Machine Learning aspect of this project is to **use environmental variables about countries from the last 15 years to train a model that predicts their corresponding life ladder values**. We will gather the above environmental variables for each country, for each year, and pass each instance of year and country into the model to train it. This model will then predict the life ladder values for 2020 and 2021 based on this training.

We will use the module template, and specifically topics discussed in Module 17, 18, and 19, to model the data we find. We will be looking at both prediction/regression modelling as well as classification.

## Data Sources

***More to be added later when data wrangling is completed.***

This is an unordered and unfinished list, and at this stage does not necessarily mean we will be using the data.

* https://www.iqair.com/air-pollution-data-api
* https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data?select=GlobalLandTemperaturesByCountry.csv
* https://www.kaggle.com/adityakadiwal/water-potability
* https://www.kaggle.com/sevgisarac/temperature-change
* https://www.kaggle.com/natashalondon/climate-change-where-we-are-and-what-we-can-do?select=CO2+emissions+by+energy+source+World+1990-2017+-+Africa.csv

## Project Commentary

* 21-07-04 - UoT Final Project Repo - Shaun Coulter, Akinsola Salami, Jeffrey Au, and Suleiman Barekzai.
* 21-07-04 - Branches created for each member. Data discussion and project outline created.
* 21-07-07 - After class discussion gave us a more concrete goal, we will data collect and reconvene after Thursday's class.

Link to Google Doc (https://docs.google.com/document/d/1EW4t8kRGlLc9MQogQzHVajHzpL0GueukDG4ZbumZaHs/edit) 
Link to Emissions Graph from Tableau Public (https://public.tableau.com/app/profile/suleiman.barekzai/viz/Top5CountrieswithHighestEmissions/HighestEmissionsbyCountry?publish=yes)
