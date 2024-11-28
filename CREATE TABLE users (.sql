CREATE TABLE users (
    userID serial  PRIMARY KEY, 
    gender varchar(10),
    city VARCHAR(100),
    visit_frequency VARCHAR(50),
    fullName VARCHAR(255),
    contact_no VARCHAR(15),
    feedback TEXT
);
INSERT INTO users (gender, city, visit_frequency, fullName, contact_no, feedback)
VALUES ('Male', 'Nairobi', 'Weekly', 'John Doe', '0712345678', 'Great experience!'),
('Female', 'Mombasa', 'Monthly', 'Jane Smith', '0723456789', 'Loved the service!'),  
('Male', 'Kisumu', 'Daily', 'Peter Otieno', '0734567890', 'Quick and reliable!'),  
('Female', 'Nakuru', 'Weekly', 'Anne Wanjiru', '0745678901', 'Very satisfied!'),  
('Male', 'Eldoret', 'Rarely', 'Michael Kiprono', '0756789012', 'Needs improvement.'),  
('Female', 'Thika', 'Monthly', 'Lucy Ndungu', '0767890123', 'Highly recommended!'),  
('Male', 'Naivasha', 'Bi-Weekly', 'David Kamau', '0778901234', 'Excellent support!'),  
('Female', 'Machakos', 'Weekly', 'Grace Mwikali', '0789012345', 'Very convenient!');

-- Maintenance Table (Weak Entity)
CREATE TABLE Maintenance (
    MaintenanceID serial PRIMARY KEY,
    GreenspaceID INT,
    maintenance_date DATE,
    type VARCHAR(100),
    cost FLOAT,
    performed_by VARCHAR(100),
    FOREIGN KEY (GreenspaceID) REFERENCES Greenspace(GreenspaceID)
);
