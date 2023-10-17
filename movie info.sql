--Customers
insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Griffin',
	'Buell',
	'9 Madison Ave, Turners Falls, MA 01376',
	'354354343131551313 6/24'
);

-- Concessions- Inventory 
insert into concessions_inventory (
	upc,
	item_quantity,
	product_name,
	product_category,
	unit_cost
	)VALUES(
	1,
	10,
	'Twizzlers',
	'Candy',
	3.99
);


-- Screens Table
insert into movie_screens(
	screen_id,
	capacity,
	show_times
)values(
	1,
	30,
	'Morning & Afternoon'
);

--Concessions- Sales Table
insert into concessions_sales(
	order_id,
	upc, 
	customer_id
)values(
	1,
	1,
	1
);

--Movies Table 
insert into movies(
	movie_id,
	movie_name,
	movie_length,
	movie_rating,
	screen_id
)values(
	1,
	'Indiana Jones',
	135,
	'PG-13',
	1
);

--Ticket Table
insert into tickets(
	ticket_id,
	ticket_date,
	ticket_cost,
	customer_id,
	movie_id
)values(
	1,
	'2023-09-28',
	7.99,
	1,
	1
);
