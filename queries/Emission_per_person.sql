SELECT 
    county_state_name,
    population,
    CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) / NULLIF(CAST(population AS DOUBLE), 0) AS emissions_per_capita
FROM emissions.default.emissions_data_2023
ORDER BY emissions_per_capita DESC;