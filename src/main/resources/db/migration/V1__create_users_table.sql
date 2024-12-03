-- V1__create_users_table.sql
-- Initial schema creation for the users table

CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,  -- Primary key with auto-increment
    name VARCHAR(100) NOT NULL,            -- User name (required)
    email VARCHAR(100) NOT NULL UNIQUE,    -- Unique email address (required)
    age INT CHECK (age >= 18 AND age <= 100), -- Age with constraint (optional)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for record creation
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Auto-updated timestamp
);

-- Optional: Seed initial data
INSERT INTO users (name, email, age) VALUES
('Alice', 'alice@example.com', 30),
('Bob', 'bob@example.com', 40);