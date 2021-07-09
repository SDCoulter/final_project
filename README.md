# Final Project - Climate Change and Effects on Human Well-Being (Quality of Life)

## Work in this Branch

* `06_make_full_temp_ds.ipynb` - using the scraped temperature data and the analysed happiness dataset, combine altogether to make one main dataset: `MAIN_countries_happiness_temps_full.csv`
* `05_be_temp_analysis.ipynb` - parse the scraped text files to generate CSV files of every countries temperature history - will be very useful for visualizations.
* `04_berkeley_temperature_data_pull.ipynb` - scrape the Berkeley Earth webpage to pull temperature data for every country in the finalized countries list.
* `03_happiness_report_analysis.ipynb` - notebook reads in the Happiness Report and performs analysis to reduce country list down to just those with data points from 2010-2019, as well as 2021, and exports the table to a CSV file.
* `02_air_quality_api_pull.ipynb` - notebook was intended to be used to pull historical air quality data from OpenWeatherMap API, however this API only goes back to 2020, not many years as required.
* `01_qol_ratings_scrape.ipynb` - notebook scrapes QoL table at Numbeo.com - we aren't using this resource at the moment though.
