DROP VIEW IF EXISTS order_view;

CREATE VIEW order_view AS
SELECT 
	order_id,
    quantity,
    total_cost
FROM customer_order
WHERE quantity > 2;

SELECT * FROM order_view;