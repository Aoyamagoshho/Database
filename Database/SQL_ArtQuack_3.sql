CREATE TABLE [Level] (
  levelId varchar(10) PRIMARY KEY,
  levelName varchar(500)
);

CREATE TABLE [Role] (
  roleId int PRIMARY KEY,
  roleName varchar(500),
);

CREATE TABLE [UserRole] (
  userRoleId varchar(10) PRIMARY KEY,
  roleId int FOREIGN KEY REFERENCES [Role]([roleId])
);

CREATE TABLE [Instructor] (
  instructorId varchar(50) PRIMARY KEY,
  userRoleId varchar(10) FOREIGN KEY REFERENCES [UserRole]([userRoleId]),
  [name] varchar(30),
  email varchar(30),
  [certificate] varchar(500),
  rate int,
  summarize varchar(500),
  [status] bit
);

CREATE TABLE [Category] (
  cateId varchar(10) PRIMARY KEY,
  [name] varchar(500)
);

CREATE TABLE [Course] (
  [course_code] varchar(30),
  instructorId varchar(50) FOREIGN KEY REFERENCES [Instructor]([instructorId]),
  cateId varchar(10) FOREIGN KEY REFERENCES [Category]([cateId]),
  levelId varchar(10) FOREIGN KEY REFERENCES [Level]([levelId]),
  reviewId varchar(50),
  courseId varchar(50) PRIMARY KEY,
  [name] varchar(500),
  [description] varchar(500),
  [upload_date] date,
  [price] float,
  [viewer] int,
  [buyer] int,
  [rate] int,
);

CREATE TABLE [Topic] (
  topicId varchar(50) PRIMARY KEY,
  [name] varchar(500),
  videoURL varchar(1000),
  courseId varchar(50) FOREIGN KEY REFERENCES [Course]([courseId])
);

CREATE TABLE [User] (
  userName varchar(100) PRIMARY KEY,
  userRoleId varchar(10) FOREIGN KEY REFERENCES [UserRole]([userRoleId]),
  id varchar(50),
  [name] varchar(100),
  email varchar(500),
  [password] varchar(30),
  [status] bit
);

CREATE TABLE [Enroll] (
  enrollId varchar(50) PRIMARY KEY,
  userName varchar(100) FOREIGN KEY REFERENCES [User]([userName]),
  [courseId] varchar(50) FOREIGN KEY REFERENCES [Course]([courseId]),
  [status] bit
);

CREATE TABLE [EnrollTopic] (
  enTopicId varchar(50) PRIMARY KEY,
  topicId varchar(50) FOREIGN KEY REFERENCES [Topic]([topicId]),
  enrollId varchar(50) FOREIGN KEY REFERENCES [Enroll]([enrollId]),
  enroll_date date,
  [status] bit
);

CREATE TABLE [ArtWork] (
  artworkId varchar(50) PRIMARY KEY,
  enTopicId varchar(50) FOREIGN KEY REFERENCES [EnrollTopic]([enTopicId]),
  userId varchar(50),
  instructorId varchar(50),
  [status] bit,
);

CREATE TABLE [Review] (
  reviewId varchar(50) PRIMARY KEY,
  artworkId varchar(50) FOREIGN KEY REFERENCES [ArtWork]([artworkId]),
  userId varchar(50),
  instructorId varchar(50),
  rate int,
  comment varchar(500),
  [date] date,
  [status] bit,
);

CREATE TABLE [Post] (
  postId varchar(50) PRIMARY KEY,
  userRoleId varchar(10) FOREIGN KEY REFERENCES [UserRole]([userRoleId]),
  cateId varchar(10) FOREIGN KEY REFERENCES [Category]([cateId]),
  title varchar(1000),
  content varchar(3000),
  [status] bit,
);
