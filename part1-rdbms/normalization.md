# Anomaly Analysis

## Insert Anomaly
We cannot add a product without creating an order.

## Update Anomaly
Customer data is repeated in multiple rows, making it difficult to update.

## Delete Anomaly
If we delete an order, it may remove customer and product data as well.

# Normalization Justification

Storing all data in one table is difficult. We must create multiple tables such as `CUSTOMERS`, `PRODUCTS`, and `ORDERS`. This approach:
- Improves data consistency
- Avoids data duplication
- Enables efficient querying and maintenance
Therefore, normalization is not over-engineering but a necessary step to maintain accurate and efficient database design.
