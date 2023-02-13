SELECT
    p.prod_id,
    quantity,
    quantity * p.price as total
FROM
    products AS p
    INNER JOIN (
        SELECT
            products.prod_id,
            sum(quantity) as quantity
        FROM
            products
            INNER JOIN orderlines ON products.prod_id = orderlines.prod_id
        GROUP BY
            products.prod_id
    ) AS s ON p.prod_id = s.prod_id
ORDER BY total DESC;