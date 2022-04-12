CREATE TABLE IF NOT EXISTS customer(
	customer_id SERIAL PRIMARY KEY,
	customer_age INTEGER
);

CREATE TABLE IF NOT EXISTS movie(
	movie_name VARCHAR(50) PRIMARY KEY,
	theatre_id INTEGER,
	total_tickets INTEGER,
	movie_time DATE DEFAULT CURRENT_DATE,
);

CREATE TABLE IF NOT EXISTS ticket(
	seat_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	movie_name VARCHAR(50),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_name) REFERENCES movie(movie_name)
);

CREATE TABLE IF NOT EXISTS concession(
	transaction_id SERIAL PRIMARY KEY,
	inventory_id INTEGER,
	transaction_amount NUMERIC(5,2),
	customer_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

