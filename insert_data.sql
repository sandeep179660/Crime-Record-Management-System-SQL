INSERT INTO Police_Station (station_name, location) VALUES
('Central PS','Chennai'),
('North PS','Bangalore'),
('South PS','Delhi'),
('Cyber Crime PS','Hyderabad'),
('Traffic PS','Mumbai');

INSERT INTO Officer (officer_name, rank_name, station_id) VALUES
('Anil','SI',3),
('Prakash','CI',4),
('Vijay','ASI',5),
('Mahesh','SI',2),
('Kavitha','CI',3),
('Ravi','DSP',2),
('Sneha','SI',1),
('Arjun','ASI',4);

INSERT INTO Criminal (criminal_name, age, gender, crime_type) VALUES
('Rohit',22,'Male','Robbery'),
('Amit',35,'Male','Fraud'),
('Sita',28,'Female','Kidnapping'),
('John',40,'Male','Cyber Crime'),
('David',32,'Male','Drug Smuggling'),
('Priya',26,'Female','Theft'),
('Kumar',38,'Male','Murder'),
('Teja',24,'Male','Chain Snatching'),
('Farhan',29,'Male','Robbery'),
('Nisha',27,'Female','Fraud');

INSERT INTO FIR (fir_date, crime_location, criminal_id, officer_id) VALUES
('2025-03-01','Chennai',1,1),
('2025-03-05','Bangalore',2,2),
('2025-03-10','Delhi',3,3),
('2025-03-15','Hyderabad',4,4),
('2025-03-20','Mumbai',5,5),
('2025-03-25','Chennai',6,6),
('2025-04-01','Hyderabad',7,7),
('2025-04-05','Bangalore',8,8),
('2025-04-10','Delhi',9,1),
('2025-04-12','Mumbai',10,2);

INSERT INTO Case_Status (fir_id, status, court_name) VALUES
(1,'Solved','Chennai Court'),
(2,'Unsolved','Bangalore Court'),
(3,'Solved','Delhi Court'),
(4,'Unsolved','Hyderabad Court'),
(5,'Solved','Mumbai Court'),
(6,'Solved','Chennai Court'),
(7,'Unsolved','Hyderabad Court'),
(8,'Solved','Bangalore Court'),
(9,'Unsolved','Delhi Court'),
(10,'Solved','Mumbai Court');
