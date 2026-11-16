WITH top_10_state_emissions AS (
    SELECT 
        state_abbr,
        SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS total_emissions
    FROM emissions.default.emissions_data_2023
    GROUP BY state_abbr
    ORDER BY total_emissions DESC
    LIMIT 10
)

SELECT
    (SELECT SUM(total_emissions) FROM top_10_state_emissions) AS top_10_state_emissions, 
    ROUND(((SELECT SUM(total_emissions) FROM top_10_state_emissions) 
    / SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE))) * 100, 2) AS top_10_state_emissions_percentage
FROM emissions.default.emissions_data_2023;