### To set up the database
Connect to `psql` and create the `bookmark_manager` and the `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE "bookmark_manager_test";
```
To set up the apporpriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
