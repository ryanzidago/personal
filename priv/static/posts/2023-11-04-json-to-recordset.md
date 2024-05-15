---
title: JSON to recordset
description: JSON to recordset
date: 2023-11-04
tags: ["software engineering", "database", "til"]
published: true
---

Today I learned about the PostgreSQL function `JSON_TO_RECORDSET` which allows you to query JSON data as if you were dealing with a regular databse table:

```sql
SELECT *
FROM JSON_TO_RECORDSET(
	'[{"first_name": "Jean", "last_name": "Dupont"}, {"first_name": "Lea", "last_name": "Dupontel", "age": 23}]'
) AS (first_name TEXT, last_name TEXT, age INT)
ORDER BY age;
```

Live example available [here](https://www.db-fiddle.com/f/hHmoCMkYhUSJmtaaBbfaU4/2).
