DROP DATABASE IF EXISTS therapistClient_db;
CREATE DATABASE therapistClient_db;

USE therapistClient_db;

CREATE TABLE therapists(
    therapist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email_addy VARCHAR(50) NOT NULL,
    admin_priv BOOLEAN NOT NULL,
    clientlist_id INT,
    therapist_license VARCHAR(45),
    FOREIGN KEY (clientlist_id)
    REFERENCES clients(client_id),

);

CREATE TABLE clients (
    client_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    therapist_id INT NOT NULL,
    email_address VARCHAR(50) NOT NULL,
    apoointment_id INT,
    FOREIGN KEY (therapist_id)
    REFERENCES therapists(therapist_id),
    FOREIGN KEY (appointment_id)
    REFERENCES appointments (appointment_id),

);

 CREATE TABLE appointments(
    appointment_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    appointment_note TEXT(300)
    appointment_time TIME,
    appointment_date DATE,
    therapist_id INT,
    client_id INT,
    FOREIGN KEY (therapist_id)
    REFERENCES therapists(therapist_id),
    FOREIGN KEY (client_id)
    REFERENCES clients(client_id),

 );
 
 CREATE TABLE dapNotes(
    dap_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dap_note TEXT(6000),
    dap_date_time DATETIME,
    therapist_id INT NOT NULL,
    client_id   INT NOT NULL,
    dap_signature BOOLEAN,
    FOREIGN KEY (therapist_id)
    REFERENCES therapists(therapist_id),
    FOREIGN KEY (client_id)
    REFERENCES clients(client_id),

 );

 CREATE TABLE soapNotes(
    soap_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    soap_note TEXT(6000),
    soap_date DATE,
    therapist_id INT NOT NULL,
    client_id   INT NOT NULL,
    FOREIGN KEY (therapist_id)
    REFERENCES therapists(therapist_id),
    FOREIGN KEY (client_id)
    REFERENCES clients(client_id),

 );

 CREATE TABLE birpNotes( 
    birp_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    birp_note TEXT(6000),
    birp_date DATE,
    therapist_id INT NOT NULL,
    client_id   INT NOT NULL,
    FOREIGN KEY (therapist_id)
    REFERENCES therapists(therapist_id),
    FOREIGN KEY (client_id)
    REFERENCES clients(client_id),

 );

 CREATE TABLE messages(
    message_id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    to_someone TEXT,
    from_someone TEXT,
    messageDate DATE,

 );

CREATE TABLE Auth_Release_Information(
    ARIdoc_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    therapist_id INT NOT NULL,
    client_id INT NOT NULL,
    ARI_date_time DATETIME,
    ARI_signature BOOLEAN,
    ARI_content TEXT,
    FOREIGN KEY (therapist_id)
    REFERENCES therapists(therapist_id),
    FOREIGN KEY (client_id)
    REFERENCES clients(client_id),

);
