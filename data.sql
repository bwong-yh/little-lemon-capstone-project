INSERT INTO menu_item (starter, course, drink, dessert) VALUES 
    ('Miso Soup', 'Sushi Platter', 'Green Tea', 'Mochi Ice Cream'),
    ('French Onion Soup', 'Coq au Vin', 'Red Wine', 'Crème Brûlée'),
    ('Caesar Salad', 'Cheeseburger', 'Coca-Cola', 'Apple Pie');

INSERT INTO staff (first_name, last_name, role, salary) VALUES 
    ('Adam', 'Johnson', 'Server', 45000),
    ('Emily', 'Baker', 'Server', 48000),
    ('Daniel', 'Smith', 'Server', 42000),
    ('Sophia', 'Lee', 'Chef', 60000),
    ('Liam', 'Garcia', 'Chef', 58000);

INSERT INTO customer (first_name, last_name, email, contact_number, staff_id) VALUES 
    ('John', 'Doe', 'johndoe@example.com', '9051234567', 2),
    ('Jane', 'Smith', 'janesmith@example.com', '4162345678', 2),
    ('Michael', 'Johnson', 'michaeljohnson@example.com', '5193456789', 1),
    ('Sarah', 'Lee', 'sarahlee@example.com', '6474567890', 1),
    ('Emily', 'Brown', 'emilybrown@example.com', '6135678901', 1);

INSERT INTO booking (booking_date, table_number, customer_id) VALUES 
    ('2024-02-25 19:00:00', 1, 1), 
    ('2024-02-26 17:30:00', 2, 4); 

INSERT INTO menu (cuisine, price, item_id) VALUES 
    ('Japanese', 25.99, 1),
    ('French', 29.99, 2),
    ('American', 19.99, 3);

INSERT INTO customer_order (order_date, quantity, total_cost, customer_id, menu_id) VALUES 
    ('2024-02-19', 1, 25.99, 1, 1),  
    ('2024-02-19', 2, 59.98, 1, 2),  
    ('2024-02-19', 1, 19.99, 2, 3),  
    ('2024-02-19', 1, 29.99, 2, 2),  
    ('2024-02-20', 3, 77.97, 3, 1),  
    ('2024-02-20', 2, 39.98, 2, 3),  
    ('2024-02-20', 2, 51.98, 2, 1),  
    ('2024-02-22', 1, 25.99, 5, 1),  
    ('2024-02-22', 1, 29.99, 5, 2),  
    ('2024-02-23', 1, 29.99, 4, 2),  
    ('2024-02-23', 2, 39.98, 4, 3), 
    ('2024-02-23', 1, 25.99, 1, 1), 
    ('2024-02-19', 1, 29.99, 1, 2); 

INSERT INTO address (street, city, state, country) VALUES 
    ('123 Main Street', 'Toronto', 'Ontario', 'Canada'),
    ('456 Elm Street', 'Ottawa', 'Ontario', 'Canada');

INSERT INTO delivery (delivery_date, status, order_id, address_id) VALUES 
    ('2024-02-23 19:00:00', 'Delivered', 10, 2),
    ('2024-02-23 19:00:00', 'In Transit', 11, 2),
    ('2024-02-23 20:00:00', 'In Transit', 12, 1);