## ETL Decisions

### Decision 1 – Fixing Date Format
Problem: The dataset had different date formats like DD-MM-YYYY and MM/DD/YYYY which created confusion.

Resolution: I converted all dates into a standard format (YYYY-MM-DD) to maintain consistency and easy analysis.

---

### Decision 2 – Handling NULL Values
Problem: Some fields like product category and price had NULL values which could affect calculations.

Resolution: I replaced NULL values with default values (like "Unknown" for category and 0 for price) to avoid errors.

---

### Decision 3 – Standardizing Category Names
Problem: Category names were inconsistent like "electronics", "Electronics", and "ELECTRONICS".

Resolution: I converted all category names to uppercase to make them consistent.