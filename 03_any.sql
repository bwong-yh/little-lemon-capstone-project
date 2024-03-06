SELECT *
FROM menu
WHERE menu_id = ANY (
	select menu_id from customer_order
	where quantity > 2
);