CREATE DATABASE crime_db;
USE crime_db;

CREATE TABLE Police_Station (
    station_id INT PRIMARY KEY AUTO_INCREMENT,
    station_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE Officer (
    officer_id INT PRIMARY KEY AUTO_INCREMENT,
    officer_name VARCHAR(50),
    rank_name VARCHAR(30),
    station_id INT,
    FOREIGN KEY (station_id) REFERENCES Police_Station(station_id)
);

CREATE TABLE Criminal (
    criminal_id INT PRIMARY KEY AUTO_INCREMENT,
    criminal_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    crime_type VARCHAR(50)
);

CREATE TABLE FIR (
    fir_id INT PRIMARY KEY AUTO_INCREMENT,
    fir_date DATE,
    crime_location VARCHAR(50),
    criminal_id INT,
    officer_id INT,
    FOREIGN KEY (criminal_id) REFERENCES Criminal(criminal_id),
    FOREIGN KEY (officer_id) REFERENCES Officer(officer_id)
);

CREATE TABLE Case_Status (
    case_id INT PRIMARY KEY AUTO_INCREMENT,
    fir_id INT,
    status VARCHAR(20),
    court_name VARCHAR(50),
    FOREIGN KEY (fir_id) REFERENCES FIR(fir_id)
);
