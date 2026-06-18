-- Create Roles

CREATE ROLE FieldOfficer;
CREATE ROLE Supervisor;
CREATE ROLE Manager;
CREATE ROLE PowerBIReader;
GO

-- Permissions

GRANT SELECT ON Households TO FieldOfficer;
GRANT SELECT ON Beneficiaries TO FieldOfficer;

GRANT SELECT, INSERT, UPDATE ON Assessments TO Supervisor;
GRANT SELECT, INSERT, UPDATE ON Referrals TO Supervisor;

GRANT CONTROL ON DATABASE::HumanitarianCaseManagement TO Manager;

GRANT SELECT TO PowerBIReader;
GO
