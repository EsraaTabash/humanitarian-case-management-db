-- Number of households by governorate

CREATE VIEW vw_households_by_governorate AS
SELECT
    Governorate,
    COUNT(*) AS TotalHouseholds
FROM Households
GROUP BY Governorate;
GO


-- High vulnerability households

CREATE VIEW vw_high_risk_households AS
SELECT
    h.HouseholdID,
    h.HeadOfHousehold,
    h.Governorate,
    h.City,
    h.FamilySize,
    a.VulnerabilityScore
FROM Households h
INNER JOIN Assessments a
    ON h.HouseholdID = a.HouseholdID
WHERE a.VulnerabilityScore >= 80;
GO


-- Services requested

CREATE VIEW vw_services_requested AS
SELECT
    s.ServiceName,
    COUNT(*) AS TotalRequests
FROM Referrals r
INNER JOIN Services s
    ON r.ServiceID = s.ServiceID
GROUP BY s.ServiceName;
GO


-- Active referrals by status

CREATE VIEW vw_active_referrals AS
SELECT
    Status,
    COUNT(*) AS TotalCases
FROM Referrals
GROUP BY Status;
GO


-- Monthly referrals trend

CREATE VIEW vw_monthly_referrals AS
SELECT
    FORMAT(ReferralDate, 'yyyy-MM') AS ReferralMonth,
    COUNT(*) AS TotalReferrals
FROM Referrals
GROUP BY FORMAT(ReferralDate, 'yyyy-MM');
GO


-- Referrals by service category

CREATE VIEW vw_referrals_by_service_category AS
SELECT
    s.ServiceCategory,
    COUNT(*) AS TotalReferrals
FROM Referrals r
INNER JOIN Services s
    ON r.ServiceID = s.ServiceID
GROUP BY s.ServiceCategory;
GO


-- Follow-up completion summary

CREATE VIEW vw_followup_summary AS
SELECT
    r.Status AS ReferralStatus,
    COUNT(f.FollowUpID) AS TotalFollowUps
FROM Referrals r
LEFT JOIN FollowUps f
    ON r.ReferralID = f.ReferralID
GROUP BY r.Status;
GO
