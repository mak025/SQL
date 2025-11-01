-- Creates schema for StudyHelper application.
-- Run in the StudyHelper database context.
USE StudyHelper;
-- Users
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
    BEGIN
        CREATE TABLE dbo.Users
        (
            Id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
            UserName NVARCHAR(100) NOT NULL,
            Email NVARCHAR(256) NOT NULL,
            PasswordHash NVARCHAR(256) NOT NULL,
            Experience INT NOT NULL DEFAULT 0,
            UserLevel INT NOT NULL DEFAULT 0
        );

        CREATE UNIQUE INDEX UX_Users_Email ON dbo.Users(Email);
        CREATE UNIQUE INDEX UX_Users_UserName ON dbo.Users(UserName);
    END

-- Topics
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Topics]') AND type in (N'U'))
    BEGIN
        CREATE TABLE dbo.Topics
        (
            Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
            Name NVARCHAR(150) NOT NULL,
            Description NVARCHAR(MAX) NULL
        );

        CREATE UNIQUE INDEX UX_Topics_Name ON dbo.Topics(Name);
    END

-- Flashcards
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Flashcards]') AND type in (N'U'))
    BEGIN
        CREATE TABLE dbo.Flashcards
        (
            Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
            Back NVARCHAR(MAX) NOT NULL,
            Front NVARCHAR(MAX) NOT NULL,
            Category NVARCHAR(100) NULL,
            DeckId INT NULL
        );

        ALTER TABLE dbo.Flashcards
            ADD CONSTRAINT FK_Flashcards_Topics_DeckId FOREIGN KEY (DeckId) REFERENCES dbo.Topics(Id) ON DELETE SET NULL;
        CREATE INDEX IX_Flashcards_DeckId ON dbo.Flashcards(DeckId);
    END

-- Submissions
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Submissions]') AND type in (N'U'))
    BEGIN
        CREATE TABLE dbo.Submissions
        (
            Id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
            UserId UNIQUEIDENTIFIER NULL,
            Title NVARCHAR(250) NOT NULL,
            Content NVARCHAR(MAX) NOT NULL,
            SubmittedAt DATETIME2 NOT NULL
        );

        ALTER TABLE dbo.Submissions
            ADD CONSTRAINT FK_Submissions_Users_UserId FOREIGN KEY (UserId) REFERENCES dbo.Users(Id) ON DELETE SET NULL;
        CREATE INDEX IX_Submissions_UserId ON dbo.Submissions(UserId);
        CREATE INDEX IX_Submissions_SubmittedAt ON dbo.Submissions(SubmittedAt);
    END

-- Badges
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Badges]') AND type in (N'U'))
    BEGIN
        CREATE TABLE dbo.Badges
        (
            Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
            Name NVARCHAR(150) NOT NULL,
            Description NVARCHAR(MAX) NULL,
            ImagePath NVARCHAR(500) NULL
        );

        CREATE UNIQUE INDEX UX_Badges_Name ON dbo.Badges(Name);
    END

-- Junction: UserBadges (many-to-many)
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserBadges]') AND type in (N'U'))
    BEGIN
        CREATE TABLE dbo.UserBadges
        (
            UserId UNIQUEIDENTIFIER NOT NULL,
            BadgeId INT NOT NULL,
            EarnedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
            CONSTRAINT PK_UserBadges PRIMARY KEY (UserId, BadgeId)
        );

        ALTER TABLE dbo.UserBadges
            ADD CONSTRAINT FK_UserBadges_Users_UserId FOREIGN KEY (UserId) REFERENCES dbo.Users(Id) ON DELETE CASCADE;

        ALTER TABLE dbo.UserBadges
            ADD CONSTRAINT FK_UserBadges_Badges_BadgeId FOREIGN KEY (BadgeId) REFERENCES dbo.Badges(Id) ON DELETE CASCADE;

        CREATE INDEX IX_UserBadges_BadgeId ON dbo.UserBadges(BadgeId);
    END