CREATE TABLE IF NOT EXISTS users (
id SERIAL PRIMARY KEY,
name TEXT,
user_name VARCHAR(15),
email TEXT,
password TEXT
);

CREATE TABLE IF NOT EXISTS tweeds (
id SERIAL PRIMARY KEY,
user_id INTEGER,
user_name TEXT,
tweed VARCHAR(30),
created_at TIMESTAMPTZ DEFAULT Now()
);

CREATE TABLE IF NOT EXISTS followers (
id SERIAL PRIMARY KEY,
user_id INTEGER,
follower_user_id INTEGER
)