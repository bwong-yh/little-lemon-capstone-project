PREPARE get_order_detail FROM
'SELECT
	order_id,
    quantity,
    total_cost
FROM customer_order
WHERE customer_id = ?
ORDER BY total_cost ASC';

SET @id = 1;

EXECUTE get_order_detail USING @id;

DEALLOCATE PREPARE get_order_detail;