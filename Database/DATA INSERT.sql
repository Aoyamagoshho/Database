-- Inserting data into [Level] table
INSERT INTO [Level] (levelId, levelName) VALUES
('L1', 'Beginner'),
('L2', 'Intermediate'),
('L3', 'Advanced'),
('L4', 'Professional'),
('L5', 'Expert');

-- Inserting data into [Role] table
INSERT INTO [Role] (roleId, roleName) VALUES
(1, 'Admin'),
(2, 'Student'),
(3, 'Instructor');

-- Inserting data into [UserRole] table
INSERT INTO [UserRole] (userRoleId, roleId) VALUES
('UR0', 1),
('UR1', 2),
('UR2', 3);

-- Inserting data into [Instructor] table
INSERT INTO [Instructor] (instructorId, userRoleId, [name], email, [certificate], rate, summarize, [status])
VALUES
    ('I1', 'UR2', 'Emily Johnson', 'emily.johnson@example.com', 'Certificate of Excellence in Art', 5, 'Experienced in Art Selling', 1),
    ('I2', 'UR3', 'John Smith', 'john.smith@example.com', 'Certificate in Music Theory', 4, 'Skilled Musician', 1),
    ('I3', 'UR2', 'Sarah Thompson', 'sarah.thompson@example.com', 'Certificate in Yoga Teaching', 4.5, 'Yoga Expert', 1),
    ('I4', 'UR1', 'Michael Davis', 'michael.davis@example.com', 'Certificate of Professional Photography', 4.8, 'Specializes in Portrait Photography', 1),
    ('I5', 'UR2', 'Jennifer Adams', 'jennifer.adams@example.com', 'Certificate in Dance Choreography', 4.2, 'Versatile Dance Instructor', 1),
    ('I6', 'UR3', 'Robert Wilson', 'robert.wilson@example.com', 'Certificate in Graphic Design', 4.6, 'Creative Designer', 1),
    ('I7', 'UR1', 'Emma Roberts', 'emma.roberts@example.com', 'Certificate of Advanced Cooking Techniques', 4.9, 'Culinary Expert', 1);

-- Inserting data into [Category] table
INSERT INTO [Category] (cateId, [name])
VALUES
    ('C1', 'Paintings'),
    ('C2', 'Sculptures'),
    ('C3', 'Photography'),
    ('C4', 'Pottery'),
    ('C5', 'Jewelry'),
    ('C6', 'Textile Art'),
    ('C7', 'Digital Art'),
    ('C8', 'Mixed Media');

-- Inserting data into [Course] table
INSERT INTO [Course] ([course_code], instructorId, cateId, levelId, reviewId, courseId, [name], [description], [upload_date], [price], [viewer], [buyer], [rate]) VALUES
('ART101', 'I1', 'C1', 'L1', 'RV1', 'CRS1', 'Art Selling Basics', 'A comprehensive guide to selling art online and offline', '2023-10-08', 99.99, 50, 10, 4),
('ART102', 'I2', 'C2', 'L2', 'RV2', 'CRS2', 'Advanced Art Techniques', 'Exploring advanced techniques in various art forms', '2023-10-15', 149.99, 80, 15, 4),
('ART103', 'I3', 'C3', 'L3', 'RV3', 'CRS3', 'Mastering Contemporary Art', 'Master the techniques and concepts of contemporary art', '2023-10-20', 199.99, 100, 20, 4),
('ART104', 'I4', 'C1', 'L4', 'RV4', 'CRS4', 'Exploring Art History', 'A comprehensive journey through the history of art', '2023-10-25', 99.99, 60, 10, 4),
('ART105', 'I5', 'C5', 'L5', 'RV5', 'CRS5', 'Digital Art Creation', 'Learn to create stunning digital artworks using various tools', '2023-10-30', 249.99, 120, 25, 4),
('ART106', 'I6', 'C8', 'L2', 'RV6', 'CRS6', 'Introduction to Ceramics', 'Basic introduction to the art of ceramics and pottery', '2023-11-05', 149.99, 80, 15, 4);

-- Inserting data into [Topic] table
INSERT INTO [Topic] (topicId, [name], videoURL, courseId) VALUES
    ('T1', 'Introduction to Art Selling', 'https://www.example.com/intro_art_selling', 'CRS1'),
    ('T2', 'Marketing Strategies for Art', 'https://www.example.com/art_marketing_strategies', 'CRS1'),
    ('T3', 'Art Pricing Techniques', 'https://www.example.com/art_pricing_techniques', 'CRS1'),
    ('T4', 'Art Promotion and Advertising', 'https://www.example.com/art_promotion_advertising', 'CRS1'),
    ('T5', 'Building Relationships with Art Buyers', 'https://www.example.com/building_relationships_art_buyers', 'CRS1'),
    ('T6', 'Art Sales Negotiation Skills', 'https://www.example.com/art_sales_negotiation_skills', 'CRS1'),
    ('T7', 'Art Selling Tips and Best Practices', 'https://www.example.com/art_selling_tips_best_practices', 'CRS1');

-- Inserting data into [User] table
INSERT INTO [User] (userName, userRoleId, id, [name], email, [password], [status]) VALUES
    ('Admin', 'UR0', 'ID0', 'Le Anh Duy', 'duylase171618@fpt.edu.vn', '1234', 1),
    ('student1', 'UR1', 'ID1', 'Michael Smith', 'michael.smith@example.com', 'password1', 1),
    ('instructor1', 'UR2', 'ID2', 'Emily Johnson', 'emily.johnson@example.com', 'password2', 1),
    ('student2', 'UR1', 'ID3', 'John Davis', 'john.davis@example.com', 'password3', 1),
    ('instructor2', 'UR2', 'ID4', 'Sarah Wilson', 'sarah.wilson@example.com', 'password4', 1),
    ('student3', 'UR1', 'ID5', 'Jennifer Lee', 'jennifer.lee@example.com', 'password5', 1),
    ('instructor3', 'UR2', 'ID6', 'David Thompson', 'david.thompson@example.com', 'password6', 1);

-- Inserting data into [Enroll] table
INSERT INTO [Enroll] (enrollId, userName, [courseId], [status]) VALUES
    ('E1', 'student1', 'CRS1', 1),
    ('E2', 'student2', 'CRS2', 1),
    ('E3', 'student3', 'CRS1', 1),
    ('E4', 'student4', 'CRS3', 1),
    ('E5', 'student5', 'CRS2', 1),
    ('E6', 'student6', 'CRS3', 1);

-- Inserting data into [EnrollTopic] table
INSERT INTO [EnrollTopic] (enTopicId, topicId, enrollId, enroll_date, [status]) VALUES
    ('ET1', 'T1', 'E1', '2023-10-09', 1),
    ('ET2', 'T2', 'E2', '2023-10-10', 1),
    ('ET3', 'T3', 'E3', '2023-10-11', 1),
    ('ET4', 'T4', 'E4', '2023-10-12', 1),
    ('ET5', 'T5', 'E5', '2023-10-13', 1),
    ('ET6', 'T6', 'E6', '2023-10-14', 1);

-- Inserting data into [ArtWork] table
INSERT INTO [ArtWork] (artworkId, enTopicId, userId, instructorId, [status]) VALUES
    ('AW1', 'ET1', 'ID1', 'I1', 1),
    ('AW2', 'ET2', 'ID2', 'I1', 1),
    ('AW3', 'ET3', 'ID3', 'I1', 1),
    ('AW4', 'ET4', 'ID4', 'I1', 1),
    ('AW5', 'ET5', 'ID5', 'I1', 1),
    ('AW6', 'ET6', 'ID6', 'I1', 1);

-- Inserting data into [Review] table
INSERT INTO [Review] (reviewId, artworkId, userId, instructorId, rate, comment, [date], [status])
VALUES
    ('RV1', 'AW1', 'ID1', 'I1', 4, 'Great insights into art selling', '2023-10-10', 1),
    ('RV2', 'AW2', 'ID2', 'I1', 5, 'Highly recommended instructor!', '2023-10-12', 1),
    ('RV3', 'AW3', 'ID3', 'I1', 4.5, 'Learned a lot from Emily Johnson', '2023-10-15', 1),
    ('RV4', 'AW4', 'ID4', 'I1', 3.5, 'Good instructor, could improve communication', '2023-10-14', 1),
    ('RV5', 'AW5', 'ID5', 'I1', 5, 'Emily is a talented artist and teacher', '2023-10-16', 1),
    ('RV6', 'AW6', 'ID6', 'I1', 4, 'Enjoyed the art class with Emily', '2023-10-13', 1);

-- Inserting data into [Post] table
INSERT INTO [Post] (postId, title, cateId, topicId, content, [status]) VALUES
    ('P1', 'Tips for Selling Your Artwork', 'C1', 'T1', 'Here are some valuable tips to help you sell your artwork effectively.', 1),
    ('P2', 'The Importance of Art Pricing', 'C1', 'T3', 'Understanding how to price your art can greatly impact your sales and success as an artist.', 1),
    ('P3', 'Promoting Your Art Online', 'C1', 'T4', 'Learn effective strategies for promoting your art online and reaching a wider audience.', 1),
    ('P4', 'Building Relationships with Art Collectors', 'C1', 'T5', 'Discover the importance of building strong relationships with art collectors and how it can benefit your art career.', 1),
    ('P5', 'Mastering the Art of Sales Negotiation', 'C1', 'T6', 'Develop essential sales negotiation skills to close deals and maximize the value of your artwork.', 1),
    ('P6', 'Art Selling Success Stories', 'C1', 'T7', 'Read inspiring success stories and learn from artists who have achieved great success in selling their artwork.', 1);
