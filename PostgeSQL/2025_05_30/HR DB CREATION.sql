CREATE TABLE regions (
    region_id SERIAL PRIMARY KEY,
    region_name VARCHAR(25) DEFAULT NULL
);

CREATE TABLE countries (
    country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id INT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    street_address VARCHAR(40) DEFAULT NULL,
    postal_code VARCHAR(12) DEFAULT NULL,
    city VARCHAR(30) NOT NULL,
    state_province VARCHAR(25) DEFAULT NULL,
    country_id CHAR(2) NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE jobs (
    job_id SERIAL PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL,
    min_salary NUMERIC(8, 2) DEFAULT NULL,
    max_salary NUMERIC(8, 2) DEFAULT NULL
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL,
    location_id INT DEFAULT NULL,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) DEFAULT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) DEFAULT NULL,
    hire_date DATE NOT NULL,
    job_id INT NOT NULL,
    salary NUMERIC(8, 2) NOT NULL,
    manager_id INT DEFAULT NULL,
    department_id INT DEFAULT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

CREATE TABLE dependents (
    dependent_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    relationship VARCHAR(25) NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

SELECT tablename FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';