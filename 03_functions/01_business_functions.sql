-- Risk Level Function

CREATE FUNCTION fn_GetRiskLevel
(
    @Score DECIMAL(5,2)
)
RETURNS NVARCHAR(20)
AS
BEGIN

    DECLARE @RiskLevel NVARCHAR(20)

    IF @Score >= 80
        SET @RiskLevel = 'High'

    ELSE IF @Score >= 50
        SET @RiskLevel = 'Medium'

    ELSE
        SET @RiskLevel = 'Low'

    RETURN @RiskLevel

END;
GO


-- Calculate Household Priority

CREATE FUNCTION fn_HouseholdPriority
(
    @FamilySize INT,
    @VulnerabilityScore DECIMAL(5,2)
)
RETURNS DECIMAL(5,2)
AS
BEGIN

    DECLARE @Priority DECIMAL(5,2)

    SET @Priority =
        (@FamilySize * 2)
        + (@VulnerabilityScore * 0.8)

    RETURN @Priority

END;
GO
