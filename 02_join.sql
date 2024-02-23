SELECT 
	customer_id,
    concat(first_name, ' ', last_name) AS full_name,
    order_id,
    total_cost,
    menu_name,
    starter,
    course
FROM customer_order
JOIN customer USING(customer_id)
JOIN menu USING(menu_id)
JOIN menu_item USING(item_id)
WHERE total_cost > 50;