# bq-scripting-practice
This repository contains my hands-on practice and projects focused on BigQuery Scripting, Advanced SQL, and Platform Features.

Objective

While tools like dbt handle SQL transformations efficiently, many real-world data engineering problems require:
Procedural logic
Dynamic execution
Error handling
Metadata-driven pipelines
Platform-level optimization

This repository focuses on mastering those capabilities using native BigQuery features.

 Key Skills Covered
 
🔹 BigQuery Scripting
DECLARE / SET variables
IF / ELSE logic
WHILE / FOR loops
Dynamic SQL (EXECUTE IMMEDIATE)
Exception handling

🔹 Stored Procedures
Parameterized procedures
Incremental loading
SCD Type 2 logic
Audit logging frameworks

🔹 Advanced SQL (Nested Data)
ARRAY / STRUCT
UNNEST / WITH OFFSET
ARRAY_AGG / Subqueries
EXISTS / NOT EXISTS

🔹 Performance Optimization

Partitioning strategies
Clustering optimization
Query pruning & cost reduction

🔹 Advanced BigQuery Features
Federated queries (GCS / external sources)
External tables / BigLake
Materialized views

📂 Repository Structure
Folder	Description
01_fundamentals	        Core scripting exercises
02_stored_procedures	  Procedure-based pipelines
03_dynamic_pipelines	  Metadata-driven ETL
04_performance	        Partitioning & clustering
05_advanced_features	  External tables & federated queries
06_interview_scenarios	Real-world use cases
projects	              End-to-end production projects

Projects
🔹 Metadata-Driven ETL Framework
Dynamic execution using control tables
Reusable pipeline logic
Logging and monitoring

🔹 BigQuery Native Data Pipeline Framework
Stored procedure-based orchestration
Retry handling
Partition-aware processing
Cost optimization


Most data engineers rely heavily on tools like dbt and Airflow.
However, deep expertise in BigQuery scripting and platform capabilities enables:
Building fully native pipelines
Reducing orchestration overhead
Optimizing cost and performance
Handling complex real-world scenarios

This repository demonstrates:

Strong SQL + scripting skills
Platform-level BigQuery expertise
Ability to design production-grade pipelines
