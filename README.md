# Humanitarian Case Management System

An end-to-end humanitarian case management system designed for NGOs and international organizations to manage beneficiary data, assessments, referrals, follow-ups, and reporting workflows.

## Project Overview

This system supports humanitarian organizations in managing vulnerable households and beneficiaries through a structured data management process.

The solution covers the full data lifecycle:

* Data Collection using KoboToolbox
* Data Storage in SQL Server
* Data Processing using SQL Views and Functions
* Power BI Reporting and KPI Monitoring

## Main Components

### SQL Server Database

* Relational database design
* Beneficiary management
* Household registration
* Assessments and vulnerability scoring
* Referrals and follow-up tracking

### KoboToolbox Forms

* Beneficiary Registration Form
* Household Assessment Form
* Incident Reporting Form

### Power BI Dashboards

* Executive Dashboard
* Early Warning Dashboard
* Donor Reporting Dashboard

## Database Modules

* Households
* Beneficiaries
* Case Workers
* Assessments
* Services
* Referrals
* Follow-Ups
* Incidents

## Security

Role-based access control:

* Field Officer
* Supervisor
* Manager
* Power BI Reader

## Power BI KPIs

* Total Households
* Total Beneficiaries
* High Risk Households
* Active Referrals
* Follow-Up Completion Rate
* Service Coverage Rate

## Technology Stack

* SQL Server
* T-SQL
* KoboToolbox
* Power BI
* Python ETL

## Skills Demonstrated

* Database Design
* Relational Data Modeling
* SQL Views and Functions
* Role-Based Security
* Humanitarian Information Management
* Monitoring and Evaluation (MEAL)
* Power BI Reporting
* Data Quality Management

## System Architecture

KoboToolbox
↓
SQL Server
↓
Views & Functions
↓
Power BI Dashboards

## Repository Structure

01_schema/
02_views/
03_functions/
04_security/
05_kobo_forms/
06_sample_data/
07_powerbi/

## Future Enhancements

* Automated Kobo API Integration
* Email Notifications
* GIS Mapping
* Beneficiary Verification Workflow
* Mobile Reporting Application
