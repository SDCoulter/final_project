# Final Project - Environmental Factors and Human Happiness

## Files

### Machine Learning

* `20_ml_01_rs0.ipynb` - LinearRegression model trained on the full dataset to predict the `Life Ladder` target values.
* `21_ml_02_rs0.ipynb` - LinearRegression model trained on the full dataset _but we dropped the Country and Year columns this time_, to predict the `Life Ladder` target values.
* `22_ml_compare_models_rs0.ipynb` - comparing these first two LinearRegression models against each other to see if the country/year variables impact the predictions.
* `25_ml_03.ipynb` - continuing LinearRegression analysis, this time scaling the dataset.
* `26_ml_compare_models_scaled.ipynb` - comparing the scaled predictions to other models.
* `27_ml_kmeans_2010.ipynb` - running KMeans clustering analysis on full dataset (all columns) for year 2010, produces the following maps.
  * [KMeans 2010 3 Clusters Map](maps/27_k3_2010.png)
  * [KMeans 2010 4 Clusters Map](maps/27_k4_2010.png)
  * [KMeans 2010 8 Clusters Map](maps/27_k8_2010.png)
* `28_ml_h_clustering.ipynb` - perform similar analysis, but this time using hierarchical clustering.
* `29_ml_h_clustering_pca.ipynb` - perform hierarchical clustering analysis, but also run Principal Component Analysis, to reduce the number of factors to two.
* `30_ml_h_clustering_pca_drop.ipynb` - perform hierarchical clustering analysis, Principal Component Analysis, and also drop the outliers from the previous analyses: the United States, India, and China - also produce `df.plot` graphs for GitHub viewing.


### SQL and Data

* `23_connect_to_sql_v1.ipynb` - first look at connecting to the PostgreSQL database and reading the data from a table - uses `with engine.connect()`.
* `24_connect_to_sql_v2.ipynb` - more refined version of reading data from table - uses SQLAlchemy, `automap_base`, and `Session` queries.
* `ds19_happ_temp_cw_gg_pop_pm_co2.csv` - most up to date dataset.

## Folders

* `database_sql/` - files, schema, queries, and ERD information here for PostgreSQL database.
* `maps/` - images of maps made during machine learning analysis.
* `ml_results/` - predictions from LinearRegression models.
* `notebooks/` - previous notebooks of analysis and data cleaning collected here.
* `output/` - file outputs from data cleaning.
* `webapp/` - a look at creating a JS webapp for data interactivity by users.
