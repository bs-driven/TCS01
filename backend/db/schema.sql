DROP DATABASE IF EXISTS therapistClient_db;
CREATE DATABASE therapistClient_db;

USE therapistClient_db;

CREATE TABLE therapists(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email_addy VARCHAR(50) NOT NULL,
    
);

CREATE TABLE clients (
    client_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    therapist_id INT NOT NULL,
    email_address VARCHAR(50) NOT NULL,
    FOREIGN KEY (therapist_id)
    REFERENCES therapists(id)
);
 CREATE TABLE tc_schedules(
    tc_schedule id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tc_date DATE,
    tc_time TIME,
 );
 CREATE TABLE dapNotes(
    dap_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dap_note TEXT(6000),
    dap_date DATE,
 );

 CREATE TABLE soapNotes(
    soap_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    soap_note TEXT(6000),
    soap_date DATE,
 );

 CREATE TABLE birpNotes( 
    birp_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    birp_note TEXT(6000),
    birp_date DATE,
 );

 CREATE TABLE messages(
    message_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    to_someone TEXT,
    from_someone TEXT,
 );

