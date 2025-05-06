SELECT e.full_name, COUNT(s.programme_id) AS programme_count
FROM employees e
JOIN supervisors s ON e.employee_id = s.employee_id
GROUP BY e.full_name
HAVING COUNT(s.programme_id) > 1;