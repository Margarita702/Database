CREATE TABLE Users
(
Id BIGINT PRIMARY KEY IDENTITY,
Username VARCHAR(30) NOT NULL, 
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARCHAR(MAX),
LastLoginTime DATETIME,
IsDeleted BIT
)

INSERT INTO Users
(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
VALUES
('stoshop', 'ewehwwidh','https://github.com/rothja.png?size=32','1/12/2022',0),
('fdgbgf', 'shfth','https://github.com/rothja.png?size=32','3/20/2022',0),
('sfhdh', 'dfhrth','https://github.com/rothja.png?size=32','7/15/2022',0),
('erfser', 'erhfrg','https://github.com/rothja.png?size=32','8/9/2022',0),
('sertes', 'serfge','https://github.com/rothja.png?size=32','4/2/2022',0)

ALTER TABLE Users
DROP CONSTRAINT PK__Users__3214EC072528CBE6

ALTER TABLE Users
ADD CONSTRAINT PK_IdUsername PRIMARY KEY (Id, Username)

ALTER TABLE Users
ADD CONSTRAINT CH_PasswordIsAtLeast5Symbols CHECK (LEN([Password]) > 5)

ALTER TABLE Users
ADD CONSTRAINT df_LastLoginTime DEFAULT GETDATE() FOR LastLoginTime
