SELECT e."Employee_Number", e."Last_Name", e."First_Name", e."Sex", s."Salary"
FROM "Employees" e
JOIN "Salaries" s ON e."Employee_Number" = s."EmployeeNumber";

SELECT "First_Name", "Last_Name", "Hire_Date"
FROM "Employees"
WHERE EXTRACT(YEAR FROM "Hire_Date") = 1986;

SELECT d."DepartmentNumber", d."DepartmentName", e."Employee_Number", e."Last_Name", e."First_Name"
FROM "Departments" d
JOIN "DepartmentManagers" dm ON d."DepartmentNumber" = dm."DepartmentNumber"
JOIN "Employees" e ON dm."EmployeeNumb" = e."Employee_Number";

SELECT de."Department", e."Employee_Number", e."Last_Name", e."First_Name", d."DepartmentName"
FROM "DepartmentalEmployees" de
JOIN "Employees" e ON de."EmployeeNum" = e."Employee_Number"
JOIN "Departments" d ON de."Department" = d."DepartmentNumber";

SELECT "First_Name", "Last_Name", "Sex"
FROM "Employees"
WHERE "First_Name" = 'Hercules' AND "Last_Name" LIKE 'B%';

SELECT e."Employee_Number", e."Last_Name", e."First_Name"
FROM "Employees" e
JOIN "DepartmentalEmployees" de ON e."Employee_Number" = de."EmployeeNum"
JOIN "Departments" d ON de."Department" = d."DepartmentNumber"
WHERE d."DepartmentName" = 'Sales';

SELECT e."Employee_Number", e."Last_Name", e."First_Name", d."DepartmentName"
FROM "Employees" e
JOIN "DepartmentalEmployees" de ON e."Employee_Number" = de."EmployeeNum"
JOIN "Departments" d ON de."Department" = d."DepartmentNumber"
WHERE d."DepartmentName" IN ('Sales', 'Development');

SELECT "Last_Name", COUNT(*) AS frequency
FROM "Employees"
GROUP BY "Last_Name"
ORDER BY frequency DESC;