SELECT
    creditcardtype,
    AVG(income)
FROM
    customers
GROUP BY
    ROLLUP(creditcardtype);