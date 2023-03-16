-- project 2 schema table creation

-- create category table

DROP TABLE category

CREATE TABLE category (
	category_id VARCHAR(30),
	category VARCHAR(50) NOT NULL,
	PRIMARY KEY (category_id)
);
-- create subcategory table

DROP TABLE subcategory

CREATE TABLE subcategory (
	subcategory_id VARCHAR(30),
	subcategory VARCHAR(50) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

-- create campaign table

DROP TABLE campaign

CREATE TABLE campaign (
	cf_id Int,
	contact_id Int,
	company_name VARCHAR(100),
	description VARCHAR(200),
	goal float,
	pledged float,
	outcome VARCHAR(30),
	backers_count Int,
	country VARCHAR(30),
	currency VARCHAR(30),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(50),
	subcategory_id VARCHAR(50),
	PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

-- create contacts table

DROP TABLE contacts

CREATE TABLE contacts (
	contact_id INT,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(100),
	PRIMARY KEY (contact_id)
);

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

SELECT * FROM campaign;