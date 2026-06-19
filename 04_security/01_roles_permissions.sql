-- Create Roles

CREATE ROLE FieldOfficer;
CREATE ROLE Supervisor;
CREATE ROLE Manager;
CREATE ROLE PowerBIReader;
GO


-- Field Officer Permissions
-- Can view household and beneficiary basic information only

GRANT SELECT ON Households TO FieldOfficer;
GRANT SELECT ON Beneficiaries TO FieldOfficer;
GO


-- Supervisor Permissions
-- Can manage assessments, referrals, and follow-ups

GRANT SELECT, INSERT, UPDATE ON Assessments TO Supervisor;
GRANT SELECT, INSERT, UPDATE ON Referrals TO Supervisor;
GRANT SELECT, INSERT, UPDATE ON FollowUps TO Supervisor;
GO


-- Manager Permissions
-- Full control over the database

GRANT CONTROL ON DATABASE::HumanitarianCaseManagement TO Manager;
GO


-- Power BI Reader Permissions
-- Can only read reporting views

GRANT SELECT ON vw_households_by_governorate TO PowerBIReader;
GRANT SELECT ON vw_high_risk_households TO PowerBIReader;
GRANT SELECT ON vw_services_requested TO PowerBIReader;
GRANT SELECT ON vw_active_referrals TO PowerBIReader;
GRANT SELECT ON vw_monthly_referrals TO PowerBIReader;
GRANT SELECT ON vw_referrals_by_service_category TO PowerBIReader;
GRANT SELECT ON vw_followup_summary TO PowerBIReader;
GO
