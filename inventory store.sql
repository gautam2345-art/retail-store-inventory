SELECT
    EXTRACT(YEAR FROM Date) AS YearMonth,
    `Product ID`,
    SUM(`Inventory Level`) AS Total_Inventory,
    SUM(`Demand Forecast`) AS Total_Forecast
FROM
    retail_in.retail_store_inventory
GROUP BY
    YearMonth, `Product ID`
ORDER BY
    YearMonth, `Product ID`;
