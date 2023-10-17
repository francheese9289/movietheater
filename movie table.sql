-- Create a database for a movie theater

-- Customer Table Creation
create table customer (
	customer_id SERIAL primary KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Concessions- Inventory Table Creation
create table concessions_inventory(
	upc SERIAL primary key,
	item_quantity INTEGER,
	product_name VARCHAR(100),
	product_category VARCHAR(100),
	unit_cost NUMERIC(8,2)
);

-- Screens Table Creation
create table movie_screens(
	screen_id SERIAL primary key,
	capacity INTEGER,
	show_times VARCHAR(100)
);

--Concessions- Sales Table Creation
create table concessions_sales(
	order_id SERIAL primary key,
	upc INTEGER NOT NULL, 
	customer_id INTEGER not null,
	FOREIGN KEY(upc) REFERENCES concessions_inventory(upc),
	FOREIGN KEY(customer_id) REFERENCES customer (customer_id)
);

--Movies Table Creation
create table movies(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	movie_length INTEGER,
	movie_rating VARCHAR(30),
	screen_id INTEGER not null,
	foreign key (screen_id) references movie_screens(screen_id)
);

--Ticket Table Creation
create table tickets(
	ticket_id SERIAL primary key,
	ticket_date DATE,
	ticket_cost numeric (8,2),
	customer_id INTEGER not null,
	movie_id INTEGER not null
);
