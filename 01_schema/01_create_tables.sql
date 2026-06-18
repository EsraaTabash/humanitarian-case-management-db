CREATE TABLE Households (
    HouseholdID INT IDENTITY(1,1) PRIMARY KEY,
    HouseholdCode VARCHAR(20) UNIQUE,
    HeadOfHousehold NVARCHAR(100),
    Phone VARCHAR(20),
    Governorate NVARCHAR(50),
    City NVARCHAR(50),
    FamilySize INT,
    RegistrationDate DATE DEFAULT GETDATE()
);

CREATE TABLE Beneficiaries (
    BeneficiaryID INT IDENTITY(1,1) PRIMARY KEY,
    HouseholdID INT,
    FullName NVARCHAR(100),
    Gender NVARCHAR(10),
    DateOfBirth DATE,
    NationalID VARCHAR(20),
    FOREIGN KEY (HouseholdID)
        REFERENCES Households(HouseholdID)
);

CREATE TABLE CaseWorkers (
    WorkerID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100),
    Position NVARCHAR(50),
    Phone VARCHAR(20)
);

CREATE TABLE Services (
    ServiceID INT IDENTITY(1,1) PRIMARY KEY,
    ServiceName NVARCHAR(100),
    ServiceCategory NVARCHAR(50)
);

CREATE TABLE Assessments (
    AssessmentID INT IDENTITY(1,1) PRIMARY KEY,
    HouseholdID INT,
    WorkerID INT,
    AssessmentDate DATE,
    VulnerabilityScore DECIMAL(5,2),
    Notes NVARCHAR(500),

    FOREIGN KEY (HouseholdID)
        REFERENCES Households(HouseholdID),

    FOREIGN KEY (WorkerID)
        REFERENCES CaseWorkers(WorkerID)
);

CREATE TABLE Referrals (
    ReferralID INT IDENTITY(1,1) PRIMARY KEY,
    HouseholdID INT,
    ServiceID INT,
    ReferralDate DATE,
    Status NVARCHAR(30),

    FOREIGN KEY (HouseholdID)
        REFERENCES Households(HouseholdID),

    FOREIGN KEY (ServiceID)
        REFERENCES Services(ServiceID)
);

CREATE TABLE FollowUps (
    FollowUpID INT IDENTITY(1,1) PRIMARY KEY,
    ReferralID INT,
    FollowUpDate DATE,
    Outcome NVARCHAR(300),

    FOREIGN KEY (ReferralID)
        REFERENCES Referrals(ReferralID)
);

CREATE TABLE Incidents (
    IncidentID INT IDENTITY(1,1) PRIMARY KEY,
    HouseholdID INT,
    IncidentDate DATE,
    IncidentType NVARCHAR(100),
    Description NVARCHAR(500),

    FOREIGN KEY (HouseholdID)
        REFERENCES Households(HouseholdID)
);
