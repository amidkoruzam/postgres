SELECT
    country,
    income,
    AVG(income) OVER (PARTITION BY country)
FROM
    customers;