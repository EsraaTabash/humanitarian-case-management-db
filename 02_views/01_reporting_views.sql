-- Number of households by governorate

CREATE VIEW vw_households_by_governorate AS
SELECT
    Governorate,
    COUNT(*) AS TotalHouseholds
FROM Households
GROUP BY Governorate;


-- High vulnerability households

CREATE VIEW vw_high_risk_households AS
SELECT
    h.HouseholdID,
    h.HeadOfHousehold,
    h.Governorate,
    a.VulnerabilityScore
FROM Households h
INNER JOIN Assessments a
ON h.HouseholdID = a.HouseholdID
WHERE a.VulnerabilityScore >= 80;


-- Services requested

CREATE VIEW vw_services_requested AS
SELECT
    s.ServiceName,
    COUNT(*) AS TotalRequests
FROM Referrals r
INNER JOIN Services s
ON r.ServiceID = s.ServiceID
GROUP BY s.ServiceName;


-- Active referrals

CREATE VIEW vw_active_referrals AS
SELECT
    Status,
    COUNT(*) AS TotalCases
FROM Referrals
GROUP BY Status;
