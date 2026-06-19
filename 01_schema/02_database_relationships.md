# Database Relationships

## Main Tables

### Households
Stores household-level information such as head of household, location, phone number, family size, and registration date.

### Beneficiaries
Stores individual beneficiary information linked to a household.

### CaseWorkers
Stores information about case workers responsible for assessments and follow-up activities.

### Services
Stores humanitarian services available for referral, such as food assistance, cash assistance, protection, health, and shelter.

### Assessments
Stores vulnerability and needs assessment records for households.

### Referrals
Stores service referral records for households.

### FollowUps
Stores follow-up records related to referrals.

### Incidents
Stores reported incidents related to households.

---

## Relationships

Households (1) ---- (Many) Beneficiaries

Households (1) ---- (Many) Assessments

CaseWorkers (1) ---- (Many) Assessments

Households (1) ---- (Many) Referrals

Services (1) ---- (Many) Referrals

Referrals (1) ---- (Many) FollowUps

Households (1) ---- (Many) Incidents

---

## Relationship Summary

- One household can have many beneficiaries.
- One household can have many vulnerability assessments.
- One case worker can conduct many assessments.
- One household can receive many service referrals.
- One service can be requested by many referrals.
- One referral can have many follow-up records.
- One household can have many reported incidents.
