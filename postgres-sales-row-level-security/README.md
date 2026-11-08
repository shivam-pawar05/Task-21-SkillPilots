# PostgreSQL Row-Level Security: Regional Sales Managers

Demo project for restricting rows in `sales` by each manager's assigned region.

Requirements: PostgreSQL and psql. Run only in a practice database.

1. As administrator: `CREATE DATABASE sales_rls_demo;`
2. Connect: `\c sales_rls_demo`
3. Run `\i /absolute/path/postgres-sales-row-level-security/sql/01_setup.sql`
4. Connect separately as `manager_west` and `manager_east`.
5. Run the queries in `sql/02_sample_queries.sql`.

The setup creates demo passwords. Change them before use beyond a local exercise.
The policy identifies the authenticated account with `session_user`; it does not
trust a client-settable region variable. Superusers and BYPASSRLS roles bypass RLS.
