-- How many people work in the sales department?
SELECT
    e.emp_name as Full_Name,
    d.dept_name as Department 
FROM
    employee e
    INNER JOIN
    department d 
    ON e.department = d.id 
WHERE
    d.dept_name = 'Sales';

-- List the names of all employees assigned to the 'Plan Christmas party' project.
SELECT
    e.emp_name as Full_Name
FROM
    employee e
    JOIN
    employee_project ep 
    ON e.id = ep.emp_id
    JOIN
    project p
    ON ep.project_id = p.id
WHERE
    p.project_name = 'Plan Christmas party';

-- List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
SELECT
    e.emp_name 
FROM
    employee e, department d, employee_project ep, project p 
WHERE
    e.department = d.id AND d.dept_name = 'Warehouse' AND e.id = ep.emp_id AND ep.project_id = p.id;

-- Which projects are the Sales department employees assigned to?
SELECT
    p.project_name
FROM
    employee e, department d, employee_project ep, project p 
WHERE
    e.department = d.id AND d.dept_name = 'Sales' AND e.id = ep.emp_id AND ep.project_id = p.id;

-- List only the managers that are assigned to the 'Watch paint dry' project.
SELECT
    d.manager
FROM
    employee e, department d, employee_project ep, project p 
WHERE
    e.department = d.id AND e.id = ep.emp_id AND ep.project_id = p.id AND p.project_name = 'Watch paint dry';
