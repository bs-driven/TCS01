DROP DATABASE IF EXISTS therapistClient_db;
CREATE DATABASE therapistClient_db;

USE therapistClient_db;

CREATE TABLE therapists(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email_addy VARCHAR(45) NOT NULL,
    
);

CREATE TABLE clients (
    client_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    therapist_id INT NOT NULL,
    email_address VARCHAR(45) NOT NULL,
    FOREIGN KEY (therapist_id)
    REFERENCES therapists(id)
);
