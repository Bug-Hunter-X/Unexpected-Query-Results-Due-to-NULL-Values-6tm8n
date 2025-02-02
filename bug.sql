```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might produce unexpected results if the `salary` column allows NULL values.  Rows where the `salary` is NULL won't be included in the results, even if they are in the 'Sales' department.  The condition `salary > 100000` evaluates to `UNKNOWN` when compared to a NULL value, and `UNKNOWN` is treated as false in SQL.