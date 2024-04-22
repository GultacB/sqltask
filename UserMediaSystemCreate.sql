CREATE DATABASE UserMediaSystem

CREATE TABLE Users(
 Id INT PRIMARY KEY IDENTITY(1,1),
 NickName NVARCHAR(20),
);

CREATE TABLE Phones(
 Id INT PRIMARY KEY IDENTITY(1,1),
 UserPhone INT NOT NULL UNIQUE,
 UserId INT FOREIGN KEY REFERENCES Users(Id) 
);

CREATE TABLE Friends(
 Id INT PRIMARY KEY IDENTITY(1,1),
 UserFriendName NVARCHAR(20),
);

CREATE TABLE UsersAndFriends(
  UserId INT FOREIGN KEY REFERENCES Users(Id),
  FriendId INT FOREIGN KEY REFERENCES Friends(Id) 
);

CREATE TABLE UserWithFriendMessages(
  Id INT PRIMARY KEY IDENTITY(1,1),
  MessageText TEXT,
  MessageSender INT FOREIGN KEY REFERENCES Users(Id),
  MessageRecipent  INT FOREIGN KEY REFERENCES Friends(Id),
);