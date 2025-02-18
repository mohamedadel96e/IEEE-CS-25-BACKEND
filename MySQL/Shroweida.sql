
-- creating the database
CREATE DATABASE shroweida;

-- use the database
USE shroweida;


-- Schema
CREATE TABLE IF NOT EXISTS AirlineCompanies(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE,
  headquarters VARCHAR(255) NOT NULL,
  fleet_size INT CHECK (fleet_size >= 0)
);


CREATE TABLE Planes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  airline_company_id INT,
  passenger_capacity INT CHECK (passenger_capacity >= 0),
  fuel_capacity INT CHECK (fuel_capacity >= 0),
  current_fuel_level INT CHECK (current_fuel_level >= 0 ),
  next_trip_date DATETIME,
  trip_destination VARCHAR(255),
  Foreign Key (airline_company_id) REFERENCES AirlineCompanies(id) ON DELETE CASCADE
);


CREATE TABLE Flights (
  id INT PRIMARY KEY AUTO_INCREMENT,
  from_location VARCHAR(255) NOT NULL,
  to_location VARCHAR(255) NOT NULL,
  takeoff_time DATETIME NOT NULL,
  arrival_time DATETIME NOT NULL,
  plane_id INT,
  Foreign Key (plane_id) REFERENCES Planes(id) ON DELETE CASCADE
);

CREATE TABLE Users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  gender ENUM('Male', 'Female') NOT NULL,
  age INT CHECK (age >= 0),
  address VARCHAR(255) NOT NULL,
  role ENUM ('Passenger', 'Airport Employee', 'Flight Attendant', 'Pilot') NOT NULL,
  salary DECIMAL(10,2) CHECK (salary >= 0) NULL DEFAULT NULL ,
  plane_id INT,
  Foreign Key (plane_id) REFERENCES Planes(id) ON DELETE SET NULL
);


CREATE TABLE Runways (
  id INT PRIMARY KEY AUTO_INCREMENT,
  plane_id INT,
  name VARCHAR(255) NOT NULL,
  flight_time DATETIME NOT NULL,
  status ENUM('open', 'close') NOT NULL,
  Foreign Key (plane_id) REFERENCES Planes(id) ON DELETE SET NULL
);

CREATE TABLE PassengerFlights (
  passenger_id INT,
  flightId INT,
  PRIMARY KEY (passenger_id, flightId),
  Foreign Key (passenger_id) REFERENCES Users(id) ON DELETE CASCADE,
  Foreign Key (flightId) REFERENCES Flights(id) ON DELETE CASCADE
);




-- Queries


"""
1- Find all upcoming flights departing from Shroweida in the next 7 days.
2- Find all passengers ,pilots,Flight attendee for the plane which has ID=1244
3- All Open runways
4- All planes,its company,passengers capacity that will flight to Tanta
"""


SELECT * FROM flights 
WHERE takeoff_time BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 7 DAY) 
AND from_location = 'Shroweida';



SELECT name FROM users 
WHERE plane_id = 1244 AND role IN ('Passenger', 'Pilot', 'Flight Attendant');


SELECT * FROM Runways WHERE status = 'open';

SELECT p.name, a.name, passenger_capacity FROM Planes p
JOIN AirlineCompanies a ON p.airline_company_id = a.id 
WHERE p.trip_destination = 'Tanta';
