CREATE DATABASE AIRWAYS
USE AIRWAYS
CREATE TABLE FLIGHT(
F_ID INT NOT NULL PRIMARY KEY,
AIRLINES VARCHAR(50),
F_SOURCE VARCHAR(50),
F_DESTINATION VARCHAR(50),
PRICE INT
)
CREATE TABLE PASSENGER(
P_ID INT NOT NULL PRIMARY KEY,
P_NAME VARCHAR(50),
P_DOB DATE,
TEL_NO INT,
EMAIL VARCHAR(100)
)
CREATE TABLE TICKETS(
T_ID INT NOT NULL PRIMARY KEY,
P_ID INT FOREIGN KEY REFERENCES PASSENGER(P_ID),
FLIGHT_ID INT FOREIGN KEY REFERENCES FLIGHT(F_ID),
DEPARTURE_DATE DATE
)
CREATE TABLE airports (
    `name` VARCHAR(56) CHARACTER SET utf8,
    `code` VARCHAR(3) CHARACTER SET utf8,
    `stateCode` VARCHAR(2) CHARACTER SET utf8,
    `countryCode` VARCHAR(2) CHARACTER SET utf8,
    `countryName` VARCHAR(32) CHARACTER SET utf8
);
select * from tickets
SELECT COUNT(P_ID) FROM PASSENGER

insert into TICKETS VALUES (10,5,11,'2021-03-23')
insert into TICKETS VALUES (11,7,11,'2021-03-23')
insert into TICKETS VALUES (12,8,12,'2021-03-23')
insert into TICKETS VALUES (13,9,11,'2021-03-23')
UPDATE FLIGHT 
SET PRICE=4001, AIRLINES='SpiceJet'
where F_ID=1
select * from flight
INSERT INTO FLIGHT VALUES(19,'IndiGo','Delhi','Mumbai',5900)
INSERT INTO FLIGHT VALUES(20,'SpiceJet','Delhi','Mumbai',5900)
INSERT INTO FLIGHT VALUES(21,'AirIndia','Delhi','Mumbai',6000)
INSERT INTO FLIGHT VALUES(22,'Vistara','Delhi','Mumbai',6100)

select * from PASSENGER
insert into PASSENGER VALUES (10,'Santosh','2001-12-21',9988776,'SS2001@gmail.com')
insert into PASSENGER VALUES (11,'Adarsh','2000-07-16',887220,'AdarshS88@gmail.com')
insert into PASSENGER VALUES (12,'Gaurang','2001-01-17',908202,'G908202@gmail.com')
insert into PASSENGER VALUES (13,'Tanmay','1999-06-01',932615,'Tanmay92@gmail.com')

select * from airports
INSERT INTO airports VALUES ('Agra Kheria','AGR',NULL,'IN','India');
INSERT INTO airports VALUES ('Ahmedabad','AMD',NULL,'IN','India');
INSERT INTO airports VALUES ('Amritsar Raja Sansi','ATQ',NULL,'IN','India');
INSERT INTO airports VALUES ('Bhubaneswar','BBI',NULL,'IN','India');
INSERT INTO airports VALUES ('Vadodara','BDQ',NULL,'IN','India');
INSERT INTO airports VALUES ('Bhuj Rudra Mata','BHJ',NULL,'IN','India');
INSERT INTO airports VALUES ('Bhopal','BHO',NULL,'IN','India');
INSERT INTO airports VALUES ('Bangalore Hindustan','BLR',NULL,'IN','India');
INSERT INTO airports VALUES ('Mumbai Chhatrapati Shivaji','BOM',NULL,'IN','India');
INSERT INTO airports VALUES ('Kozhikode','CCJ',NULL,'IN','India');
INSERT INTO airports VALUES ('Kolkata Netaji Subhas Chandra','CCU',NULL,'IN','India');
INSERT INTO airports VALUES ('Kolkata Netaji Subhas Chandra','CCU',NULL,'IN','India');
INSERT INTO airports VALUES ('Kochi','COK',NULL,'IN','India');
INSERT INTO airports VALUES ('Dehra Dun','DED',NULL,'IN','India');
INSERT INTO airports VALUES ('Delhi Indira Gandhi Intl','DEL',NULL,'IN','India');
INSERT INTO airports VALUES ('Gawahati Borjhar','GAU',NULL,'IN','India');
INSERT INTO airports VALUES ('Gaya','GAY',NULL,'IN','India');
INSERT INTO airports VALUES ('Gorakhpur','GOP',NULL,'IN','India');
INSERT INTO airports VALUES ('Gwalior','GWL',NULL,'IN','India');
INSERT INTO airports VALUES ('Hyderabad Rajiv Gandhi International Airport','HYD',NULL,'IN','India');
INSERT INTO airports VALUES ('Indore','IDR',NULL,'IN','India');
INSERT INTO airports VALUES ('Chandigarh','IXC',NULL,'IN','India');
INSERT INTO airports VALUES ('Mangalore Bajpe','IXE',NULL,'IN','India');
INSERT INTO airports VALUES ('Belgaum Sambre','IXG',NULL,'IN','India');
INSERT INTO airports VALUES ('Lilabari','IXI',NULL,'IN','India');
INSERT INTO airports VALUES ('Jammu Satwari','IXJ',NULL,'IN','India');
INSERT INTO airports VALUES ('Leh','IXL',NULL,'IN','India');
INSERT INTO airports VALUES ('Madurai','IXM',NULL,'IN','India');
INSERT INTO airports VALUES ('Ranchi','IXR',NULL,'IN','India');
INSERT INTO airports VALUES ('Silchar Kumbhirgram','IXS',NULL,'IN','India');
INSERT INTO airports VALUES ('Aurangabad Chikkalthana','IXU',NULL,'IN','India');
INSERT INTO airports VALUES ('Jamshedpur Sonari','IXW',NULL,'IN','India');
INSERT INTO airports VALUES ('Kandla','IXY',NULL,'IN','India');
INSERT INTO airports VALUES ('Port Blair','IXZ',NULL,'IN','India');
INSERT INTO airports VALUES ('Jodhpur','JDH',NULL,'IN','India');

SELECT TICKETS.T_ID,PASSENGER.P_NAME,FLIGHT.F_SOURCE,FLIGHT.F_DESTINATION,FLIGHT.PRICE,DEPARTURE_DATE
FROM TICKETS
INNER JOIN FLIGHT ON
TICKETS.FLIGHT_ID=FLIGHT.F_ID
INNER JOIN PASSENGER ON
TICKETS.P_ID=PASSENGER.P_ID


SELECT DEPARTURE_DATE FROM TICKETS UNION ALL SELECT P_DOB FROM PASSENGER
