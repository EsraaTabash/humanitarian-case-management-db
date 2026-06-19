-- Households

INSERT INTO Households
(HouseholdCode, HeadOfHousehold, Phone, Governorate, City, FamilySize)
VALUES
('HH001','Ahmed Ali','0599000001','Gaza','Al-Rimal',6),
('HH002','Mona Salem','0599000002','Khan Younis','Al-Amal',4),
('HH003','Yousef Nassar','0599000003','Rafah','Tal Al-Sultan',8),
('HH004','Alaa Hamdan','0599000004','North Gaza','Jabalia',5),
('HH005','Rami Abu Saif','0599000005','Middle Area','Deir Al-Balah',7);


-- Beneficiaries

INSERT INTO Beneficiaries
(HouseholdID, FullName, Gender, DateOfBirth, NationalID)
VALUES
(1,'Sara Ahmed','Female','2013-05-01','401111111'),
(1,'Mohammed Ahmed','Male','2011-03-12','401111112'),
(2,'Lina Salem','Female','2014-06-08','401111113'),
(3,'Omar Nassar','Male','2012-02-22','401111114'),
(4,'Mariam Hamdan','Female','2010-09-10','401111115');


-- Case Workers

INSERT INTO CaseWorkers
(FullName, Position, Phone)
VALUES
('Huda Yassin','Field Officer','0599111111'),
('Khaled Omar','Case Supervisor','0599222222'),
('Rana Nabil','Protection Officer','0599333333');


-- Services

INSERT INTO Services
(ServiceName, ServiceCategory)
VALUES
('Food Assistance','Food Security'),
('Cash Assistance','Basic Needs'),
('Psychosocial Support','Protection'),
('Shelter Repair','Shelter'),
('Medical Referral','Health');


-- Assessments

INSERT INTO Assessments
(HouseholdID, WorkerID, AssessmentDate, VulnerabilityScore, Notes)
VALUES
(1,1,'2026-01-10',85,'Large household with urgent food needs'),
(2,1,'2026-01-12',62,'Moderate vulnerability'),
(3,2,'2026-01-15',90,'High-risk household requiring urgent referral'),
(4,3,'2026-01-18',74,'Needs follow-up visit'),
(5,2,'2026-01-20',55,'Low to medium vulnerability');


-- Referrals

INSERT INTO Referrals
(HouseholdID, ServiceID, ReferralDate, Status)
VALUES
(1,1,'2026-01-11','Open'),
(2,2,'2026-01-13','Closed'),
(3,3,'2026-01-16','Open'),
(4,4,'2026-01-19','In Progress'),
(5,5,'2026-01-22','Closed');


-- Follow Ups

INSERT INTO FollowUps
(ReferralID, FollowUpDate, Outcome)
VALUES
(1,'2026-01-18','Food assistance pending distribution'),
(2,'2026-01-20','Cash assistance delivered successfully'),
(3,'2026-01-23','Case referred to protection partner'),
(4,'2026-01-25','Shelter repair assessment scheduled'),
(5,'2026-01-29','Medical referral completed');


-- Incidents

INSERT INTO Incidents
(HouseholdID, IncidentDate, IncidentType, Description)
VALUES
(1,'2026-01-14','Protection Concern','Child protection concern reported during visit'),
(3,'2026-01-17','Shelter Damage','Household reported severe shelter damage'),
(4,'2026-01-21','Access Constraint','Family unable to access service point');
