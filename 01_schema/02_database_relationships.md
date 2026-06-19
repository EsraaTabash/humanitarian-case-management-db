# Database Relationships

## Main Tables

### Beneficiaries
Stores beneficiary personal information.

### Households
Stores household information linked to beneficiaries.

### Assessments
Stores vulnerability and needs assessments.

### Cases
Stores case management records.

### Referrals
Stores service referral records.

### FollowUps
Stores follow-up visit records.

### Services
Stores available humanitarian services.

### Users
Stores system users and roles.

---

## Relationships

Beneficiaries (1) ---- (Many) Assessments

Beneficiaries (1) ---- (Many) Cases

Cases (1) ---- (Many) Referrals

Cases (1) ---- (Many) FollowUps

Services (1) ---- (Many) Referrals

Users (1) ---- (Many) Cases
