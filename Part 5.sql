CREATE TABLE UserActivity (
    ActivityID serial PRIMARY KEY,
    GreenspaceID INT,
    UserID INT,
    description TEXT,
    activity_date DATE,
    duration INT,
    total_time INT,
    FOREIGN KEY (GreenspaceID) REFERENCES Greenspace(GreenspaceID),
    FOREIGN KEY (UserID) REFERENCES users(UserID)
);
INSERT INTO UserActivity (GreenspaceID, UserID, description, activity_date, duration, total_time)
VALUES (1, 1, 'Jogging', '2024-11-15', 60, 120),
(2, 2, 'Cycling', '2024-11-16', 90, 180),  
(3, 3, 'Picnic', '2024-11-14', 120, 240),  
(1, 4, 'Walking', '2024-11-15', 30, 90),  
(4, 5, 'Yoga', '2024-11-13', 45, 75),  
(2, 6, 'Photography', '2024-11-17', 60, 120),  
(5, 7, 'Bird Watching', '2024-11-18', 80, 160),  
(3, 8, 'Meditation', '2024-11-12', 50, 100);
