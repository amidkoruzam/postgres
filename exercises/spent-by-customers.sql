SELECT
    customers.customerid,
    firstname,
    lastname,
    sum(totalamount) AS spent
FROM
    orders
    INNER JOIN customers ON customers.customerid = orders.customerid
GROUP BY
    customers.customerid
ORDER BY
    spent DESC;