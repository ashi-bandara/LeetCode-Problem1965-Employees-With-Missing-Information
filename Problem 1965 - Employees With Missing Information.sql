SELECT employee_id FROM Employees E WHERE employee_id NOT IN (SELECT employee_id FROM Salaries)
UNION ALL
SELECT employee_id FROM Salaries S WHERE employee_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY employee_id;
