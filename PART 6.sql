INSERT INTO Facility (GreenspaceID, facilityType)
VALUES (1, 'Playground'),
(2, 'Restroom'),  
(3, 'Picnic Area'),  
(4, 'Walking Trail'),  
(5, 'Parking Lot'),  
(1, 'Gazebo'),  
(3, 'Bicycle Rack'),  
(2, 'Drinking Fountain'),  
(4, 'Sports Court');
-- Retrieve all greenspaces and their locations
SELECT g.name AS GreenspaceName, l.city, l.neighbourhood, g.type, g.area
FROM Greenspace g
JOIN Location l ON g.LocationID = l.LocationID;
-- Retrieve events for a specific greenspace
SELECT e.name AS EventName, e.event_date, e.attendance_count
FROM Event e
WHERE e.GreenspaceID = 1;
-- Retrieve all user activities
SELECT ua.description, u.fullName, ua.activity_date, ua.duration
FROM UserActivity ua
JOIN users u ON ua.UserID = u.UserID;
-- Update maintenance cost
UPDATE Maintenance
SET cost = 2000
WHERE MaintenanceID = 1;

