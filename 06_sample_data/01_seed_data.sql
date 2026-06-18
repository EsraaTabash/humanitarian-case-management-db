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
