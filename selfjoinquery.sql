
create database selfs;
use selfs;


CREATE TABLE empl1 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

INSERT INTO empl1(employee_id, employee_name, manager_id) VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 2),
(4, 'David', 1);

SELECT e.employee_name AS employee_name, m.employee_name AS manager_name
FROM empl1 e
LEFT JOIN empl1 m ON e.manager_id = m.employee_id;
