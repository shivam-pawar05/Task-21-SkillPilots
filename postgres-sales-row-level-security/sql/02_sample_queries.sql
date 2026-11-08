-- Connect separately as manager_west:
SELECT current_user, session_user;
SELECT * FROM public.sales ORDER BY sale_id;
-- Expected: WEST rows only.

-- Connect separately as manager_east:
SELECT current_user, session_user;
SELECT * FROM public.sales ORDER BY sale_id;
-- Expected: EAST rows only.

SELECT DISTINCT region FROM public.sales;
-- A manager should not be able to read the mapping table:
SELECT * FROM public.manager_regions;
-- Expected: permission denied.
