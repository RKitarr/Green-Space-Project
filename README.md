# Green-Space-Project

CREATE TABLE Location (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    neighbourhood VARCHAR(100),
    coordinates VARCHAR(255),
    population_density INT,
    address VARCHAR(255)
);


INSERT INTO Location (city, neighbourhood, coordinates, population_density, address)
VALUES ('Nairobi', 'Westlands', '1.29027° S, 36.8219° E', 5000, 'Parklands Road');
 

CREATE TABLE Greenspace (
    GreenspaceID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    area FLOAT,
    LocationID INT,
    status VARCHAR(50),
    created_date DATE,
    age INT,
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

INSERT INTO Greenspace (name, type, area, LocationID, status, created_date, age)
VALUES ('Uhuru Park', 'Urban Park', 12.5, 1, 'Active', '2020-01-01', 4);

CREATE TABLE Event (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    GreenspaceID INT,
    event_date DATE,
    attendance_count INT,
    total_attendees INT,
    FOREIGN KEY (GreenspaceID) REFERENCES Greenspace(GreenspaceID)
);

INSERT INTO Event (name, GreenspaceID, event_date, attendance_count, total_attendees)
VALUES ('Music Festival', 1, '2024-12-01', 500, 1000);

CREATE TABLE User (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    gender VARCHAR(10),
    city VARCHAR(100),
    visit_frequency VARCHAR(50),
    fullName VARCHAR(255),
    contact_no VARCHAR(15),
    feedback TEXT
);

INSERT INTO User (gender, city, visit_frequency, fullName, contact_no, feedback)
VALUES ('Male', 'Nairobi', 'Weekly', 'John Doe', '0712345678', 'Great experience!');

CREATE TABLE Maintenance (
    MaintenanceID INT AUTO_INCREMENT PRIMARY KEY,
    GreenspaceID INT,
    maintenance_date DATE,
    type VARCHAR(100),
    cost FLOAT,
    performed_by VARCHAR(100),
    FOREIGN KEY (GreenspaceID) REFERENCES Greenspace(GreenspaceID)
);


CREATE TABLE EnvironmentalImpact (
    ImpactID INT AUTO_INCREMENT PRIMARY KEY,
    GreenspaceID INT,
    air_quality_index FLOAT,
    noise_level FLOAT,
    pollutants TEXT,
    biodiversity_index FLOAT,
    FOREIGN KEY (GreenspaceID) REFERENCES Greenspace(GreenspaceID)
);


CREATE TABLE UserActivity (
    ActivityID INT AUTO_INCREMENT PRIMARY KEY,
    GreenspaceID INT,
    UserID INT,
    description TEXT,
    activity_date DATE,
    duration INT,
    total_time INT,
    FOREIGN KEY (GreenspaceID) REFERENCES Greenspace(GreenspaceID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);


CREATE TABLE Facility (
    FacilityID INT AUTO_INCREMENT PRIMARY KEY,
    GreenspaceID INT,
    facilityType VARCHAR(100),
    FOREIGN KEY (GreenspaceID) REFERENCES Greenspace(GreenspaceID)
);

INSERT INTO Facility (GreenspaceID, facilityType)
VALUES (1, 'Playground');
