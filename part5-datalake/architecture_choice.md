## Architecture Recommendation

For a fast-growing food delivery startup, a **Data Lakehouse** architecture is the best choice. The system must handle diverse data types including GPS logs, customer reviews, transactions, and images.

### Why Data Lakehouse?

**Data Warehouse limitations:**
- Optimized for structured data only
- Lacks flexibility for unstructured data (images, text)

**Data Lake limitations:**
- Supports all data types but lacks query performance
- Weak data governance capabilities

**Data Lakehouse advantages:**
- Stores both structured and unstructured data
- Provides efficient querying and strong data governance
- Enables real-time analysis and customer insights
- Supports faster, data-driven business decisions

A Data Lakehouse combines the scalability of data lakes with the reliability and performance of data warehouses, making it ideal for this scenario.