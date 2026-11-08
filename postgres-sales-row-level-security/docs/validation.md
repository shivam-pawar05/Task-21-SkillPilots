# Validation

Connect using separate login sessions:
`psql -h localhost -U manager_west -d sales_rls_demo`
`psql -h localhost -U manager_east -d sales_rls_demo`

Each manager should see only their assigned region. They should receive permission
denied when selecting from manager_regions. Test as ordinary login accounts, not
by SET ROLE from a superuser session: session_user remains the original login.

Superusers and roles with BYPASSRLS bypass row-level security. Keep the mapping
table and SECURITY DEFINER function administrator-controlled. This is an educational
demo; review all permissions before adapting it for production.
