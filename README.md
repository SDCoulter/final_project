# Final Project - Environmental Factors and Effects on Human Well-Being and Happiness

## Overview

This is the repository for Module 20, the ***Final Project***, of the University of Toronto Data Analysis Bootcamp Course. Work created and organized by Akinsola Salami, Jeffrey Au, Suleiman Barekzai, Najeeb Amlani, and Shaun Coulter.

## Communication Protocols

We communicated as a team with the following methods:

* Google Doc Organization
  * Google Drive File Share
* Dedicated Slack Channel Discussions
* Google Meet Meetings
  * Outside of Class Discussions

We currently plan to do our analysis with the use of the following tools (more tools will be added as needed):

* **Python**
  * Pandas
  * NumPy
  * TensorFlow
  * scikit-learn
  * Matplotlib
* **SQL**
  * PostgreSQL
  * pgAdmin
* Tableau

We may use the following tools - ideas are still being investigated.

## Folder Structure Detailed

* **Dataset** - our current main datasets, the standard one, and one that has been corrected by the population of the country (per capita).
* **Notebooks/Machine Learning** - currently 4 examples of a machine learning model to predict the Life Ladder value from environmental data (expanded on below).
* **Resources** - datasets that we transformed and cleaned for main dataset.
* **SQL_Database** - files pertaining to the PostgreSQL/pgAdmin database, including a Schema and Queries, as well as the files that we import to the database (more detal below).
* **Visualizations** - maps made with the machine learning models and Tableau.

## Our Data Story

We are setting out to look at how the environment around us affects how happy we are, and how strong this effect is. We will do this by looking at the environmental variables of countries, and seeing if we can use them to predict the `Life Ladder` target variable from the **World Happiness Index**.

Is the environment a major source of the quality of life for humanity? Or is it merely a small part of a much larger story?

## Independent Variables

* Country Name
* Year of Pertaining Data
* Average Temperature
* Percentage Access to Clean Water
* Greenhouse Gas Emissions
* Air Quality - PM2.5
* CO<sub>2</sub> Emissions
* Population

For the per capita dataset we removed the Population variable, but used it to produce the variables:

* Greenhouse Gas Emissions per Capita
* CO<sub>2</sub> Emissions per Capita

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

Using Tableau tools along with data wrangling, we will produce visualizations detailing the variables we found and plot them on maps. This will give us a way to look for correlation amongst the independent variables, while also allowing a user to find interesting information of their own. We will also include the target variables to see if we can visually show our overarching data story. These maps, along with any required graphs will be contained on an interactive dashboard for all to use.

[Google Slides Presentation](https://docs.google.com/presentation/d/16L31giLhW9ze0KgWcnrd5dRoYOU0Yt9biegWROOU-Q4/edit?usp=sharing)

## Database

After cleaning the datasets with Python we imported them into our designed PostgreSQL database in pgAdmin. To do this we created an ERD (shown below) and a schema to describe the database setup.

![PostgreSQL Database ERD](sql_database/erd/ERD.png)

More information about the cleaning of data, and the datasets themselves can be found in the `sql_database` folder. We also include a number of queries we have used for data analysis, for example, creating our main dataset using `JOIN`'s:

```sql
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
  ```

## Machine Learning

Our goal in the Machine Learning aspect of this project is to **use environmental variables about countries from the last 10 or so years to train a model that predicts their corresponding life ladder values**. We gather the above environmental variables for each country, for each year, and pass each instance of year and country into the model to train it. This model will then predict the life ladder values for other years in the dataset, as well as potentially predicting future scores.

In the machine learning notebooks we use `SQLAlchemy` to connect to our PostgreSQL database and pull the data from it, rather than loading a CSV file. More information about this process can be found in the following notebooks.

Below is a list describing in detail the makeup of the `notebooks/machine_learning` folder, and the analysis we have performed so far.

* `1 Machine Learning - Life Ladder Prediction - Train Test` - for this analysis we use the ETL method, first extracting the data from the SQL database using `SQLAlchemy` and `automap_base()`. We then transform the data, dropping the null values and unneeded columns. Then we split the dataset, scale using `StandardScaler`, and begin building the model. The model uses the Keras module in TensorFlow to create a neural net with an input layer, a hidden layer, and an output layer. As we want to use a regression model we use the `mean_squared_error` loss metric, and predict the target variable of the test data. The differences between the actual scores and the predicted scores are then plotted on a line graph.
* `2 Machine Learning - Life Ladder Prediction - Predict 2018` - the analysis described above is followed for this and the remaining machine learning notebooks, the data is read in, transformed, and loaded into a neural network. The difference for this analysis is that we do not split the data at random, instead we try to use data from 2010-2017 to predict the 2018 scores, and we plot the results.
* `3 Machine Learning - LL Prediction - Countries Included` - this analysis follows on from `1`, but instead does not drop the `Country` variable, using the `OneHotEncoder` feature to convert the categorical data into numerical. The results are again plotted.
* `4 Machine Learning - LL Prediction - Countries Included Predict 2018` - similarly to `3` this analysis is just an extension of the 2018 prediction analysis, but we do not drop the `Country` variable. We plot the predictions and show that including the country data is a must, as the model was much more accurate with less neurons and epochs.
* `segment1/` - the original analysis into a machine learning model, we take a brief look at KMeans clustering, with the look to expand on this in the future of the project.

## Data Sources

Our complete list of datasources are:

* https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data?select=GlobalLandTemperaturesByCountry.csv
* https://www.kaggle.com/adityakadiwal/water-potability
* https://www.kaggle.com/sevgisarac/temperature-change
* https://www.kaggle.com/natashalondon/climate-change-where-we-are-and-what-we-can-do?select=CO2+emissions+by+energy+source+World+1990-2017+-+Africa.csv
* https://www.kaggle.com/ajaypalsinghlo/world-happiness-report-2021?select=world-happiness-report.csv
* https://data.worldbank.org/indicator/EN.ATM.GHGT.KT.CE
* http://berkeleyearth.lbl.gov/country-list/
* https://ourworldindata.org/co2-and-other-greenhouse-gas-emissions
* https://www.who.int/data/gho/data/indicators/indicator-details/GHO/concentrations-of-fine-particulate-matter-(pm2-5)
* https://www.who.int/data/gho/data/indicators/indicator-details/GHO/population-using-at-least-basic-drinking-water-services-(-)

## Link to Dashboard Story
[Link to Dashboard Storyboard on Google Slides](https://docs.google.com/presentation/d/1GU2uN5hGSZcJhtLaCoZDoFTNrHmEsVjjUldqkSYuPU0/edit#slide=id.p).

## Tableau Links
[Tableau Link 1](https://public.tableau.com/app/profile/akinsola.salami/viz/UpdatedClimateandWellBeing/Sheet5).

[Tableau Link 2](https://public.tableau.com/app/profile/jeffrey.au7418/viz/FinalProjectmock/ChangesinPopulation2010-2018?publish=yes).

[Tableau Link 3](https://public.tableau.com/app/profile/akinsola.salami/viz/ClimateandWellBeing/PopulationofEachCountry).

[Tableau Link 4](https://public.tableau.com/app/profile/suleiman.barekzai/viz/Top5CountrieswithHighestEmissions/HighestEmissionsbyCountry?publish=yes).

[Tableau Link 5](https://public.tableau.com/app/profile/najeeb6870/viz/FinalProjectVisualizations-Najeeb/Dashboard1?publish=yes).


## Project Commentary

* 21-07-04 - UoT Final Project Repo - Shaun Coulter, Akinsola Salami, Jeffrey Au, Najeeb Amlani, and Suleiman Barekzai.
* 21-07-04 - Branches created for each member. Data discussion and project outline created.
* 21-07-07 - After class discussion gave us a more concrete goal, we will data collect and reconvene after Thursday's class.
* 21-07-11 - Discussion before Segment 1 submission, organized file structure for future merges.
* 21-07-22 - Added new machine learning files, as well as SQL database information - need to add further visualizations and Tableau links.
* 21-07-29 - Finalized README, combined different Tableau sheets, planned for presentation.

Link to [Google Doc](https://docs.google.com/document/d/1EW4t8kRGlLc9MQogQzHVajHzpL0GueukDG4ZbumZaHs/edit).
