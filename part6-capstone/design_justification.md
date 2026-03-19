# Data Storage Architecture Justification

## RDBMS for Structured Patient Records
We use Relational Database Management Systems (RDBMS) to store structured patient records such as personal details and treatment history because it ensures **data consistency** and **reliability** through ACID properties and enforced schemas.

## Data Lake for Raw Data
A data lake stores raw data such as ICU device streams and logs because it can **handle large volumes of unstructured data** with flexible schemas, enabling cost-effective storage and future-ready data ingestion.

## Data Warehouse for Reporting & Analytics
A data warehouse is used for reporting and analytics like monthly hospital reports because it is **optimized for fast query performance** through denormalization, indexing, and pre-aggregated data structures.

## Combined Benefits
This three-tier architecture efficiently manages **both real-time and historical data** by:
- Maintaining data integrity in operational systems (RDBMS)
- Capturing diverse data sources at scale (Data Lake)
- Enabling fast insights through optimized analytical queries (Data Warehouse)

OLTP vs OLAP Boundary

The OLTP system includes the RDBMS where real-time patient data is stored and updated. The OLAP system begins at the data warehouse where historical data is analyzed for reporting and insights. Data flows from OLTP to OLAP through data ingestion and transformation processes.

OLTP vs OLAP Boundary

The OLTP system includes the RDBMS where real-time patient data is stored and updated. The OLAP system begins at the data warehouse where historical data is analyzed for reporting and insights. Data flows from OLTP to OLAP through data ingestion and transformation processes.