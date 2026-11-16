SELECT
    county_state_name,
    population,
    CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) AS county_emission
FROM emissions.default.emissions_data_2023
ORDER BY county_emission DESC
LIMIT 10;