# United States Greenhouse Gas Emissions Analysis (2023)

## Project Overview

This project analyzes greenhouse gas (GHG) emissions across the United States using **Databricks SQL** and **Databricks AI/BI Dashboards**.

The objective is to explore geographical emission patterns, identify states and counties with the highest emissions, and examine the relationship between population and emissions per capita.

The project uses a 2023 emissions dataset attributed to the **Environmental Protection Agency (EPA)**.

## Dashboard Preview

![United States Emissions Dashboard](databricks_emissions_project.png)

## Technologies Used

- **Databricks** – Data analysis and dashboard development
- **Databricks SQL** – Data querying, aggregation, and transformation
- **Databricks AI/BI Dashboards** – Interactive data visualizations
- **SQL** – Common Table Expressions (CTEs), aggregate functions, data type conversions, and sorting
- **CSV** – Source data format

## Dashboard Visualizations

### 1. Geographical Distribution of Emissions

An interactive map displaying emission-related locations across the United States using latitude and longitude coordinates.

### 2. Emissions vs. Population

A scatter plot examining the relationship between county population and greenhouse gas emissions per capita.

Emissions per capita are calculated by dividing county emissions by the corresponding population.

### 3. Top 10 States by Total Emissions

A donut chart displaying the ten states with the highest total greenhouse gas emissions.

**Key Finding:** The top 10 states collectively account for approximately **50.87%** of total emissions in the dataset.

### 4. Top 10 Counties by Total Emissions

A horizontal bar chart ranking counties by total greenhouse gas emissions.

The three highest-emission counties displayed are:

1. Maricopa County, Arizona – 9.81 million
2. Harris County, Texas – 9.68 million
3. Cook County, Illinois – 8.11 million

Values are displayed in the dashboard's emissions units.

## SQL Queries

The project contains five SQL files:

| SQL File | Description |
|---|---|
| `Emission_location_data.sql` | Retrieves geographical coordinates and emission values for map visualization. |
| `Emission_per_person.sql` | Calculates greenhouse gas emissions per capita for counties. |
| `Emission_per_state.sql` | Aggregates emissions by state and retrieves the top 10 states. |
| `top_10_emission_percentage.sql` | Uses a CTE to calculate the percentage of total emissions contributed by the top 10 states. |
| `top_10_county_emissions.sql` | Identifies the 10 counties with the highest emissions. |

## Data Processing

The SQL analysis includes:

- Converting emission values stored as strings into numeric data types using `CAST()` and `REPLACE()`.
- Aggregating state-level emissions using `SUM()` and `GROUP BY`.
- Calculating per-capita emissions using population data.
- Using `NULLIF()` to prevent division by zero.
- Using Common Table Expressions (CTEs) for calculating the top 10 states' contribution to nationwide emissions.
- Sorting and limiting results to identify top-emission regions.

## Dataset

**File:** `Emissions_Data_2023.csv`

**Year:** 2023

**Source:** EPA (as identified in the dashboard)

The analysis uses the following fields:

- County and state names
- State abbreviations
- Population
- Latitude and longitude
- Greenhouse gas emissions (metric tons of CO2 equivalent)

## Project Structure

```text
US-Emissions-Analysis/
│
├── Emissions_Data_2023.csv
├── US Emissions 2023.lvdash.json
├── databricks_emissions_project.png
│
├── Emission_location_data.sql
├── Emission_per_person.sql
├── Emission_per_state.sql
├── top_10_emission_percentage.sql
├── top_10_county_emissions.sql
│
└── README.md
```

## How to Use

1. Import `Emissions_Data_2023.csv` into Databricks.
2. Create a table named `emissions_data_2023` in the appropriate catalog and schema.
3. Update the SQL files' table references if necessary. The original queries use `emissions.default.emissions_data_2023`.
4. Execute the SQL queries using Databricks SQL.
5. Import `US Emissions 2023.lvdash.json` into a Databricks workspace.
6. Configure the dashboard's datasets and SQL warehouse as needed.
7. Explore the emissions visualizations.

## Key Takeaways

- Developed an interactive dashboard to analyze US greenhouse gas emissions.
- Used SQL aggregations and CTEs to identify high-emission states and counties.
- Calculated emissions per capita to support comparisons across regions with different populations.
- Visualized geographical distribution, population relationships, and emissions rankings.
- Gained hands-on experience with Databricks SQL and AI/BI Dashboards.
