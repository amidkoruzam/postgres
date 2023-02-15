SELECT
    creditcardtype,
    country,
    count(customerid)
FROM
    customers
GROUP BY
    GROUPING SETS ((country, creditcardtype), ())
ORDER BY
    country;