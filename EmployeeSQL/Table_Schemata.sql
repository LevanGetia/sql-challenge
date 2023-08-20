
CREATE TABLE "Titles" (
    "TitleID" int   NOT NULL,
    "Title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "TitleID"
     )
);

CREATE TABLE "Employees" (
    "Employee_Number" int   NOT NULL,
    "Employment_Title_ID" varchar(50)   NOT NULL,
    "Birth_Date" date   NOT NULL,
    "First_Name" varchar(50)   NOT NULL,
    "Last_Name" varchar(50)   NOT NULL,
    "Sex" char(1)   NOT NULL,
    "Hire_Date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Employee_Number"
     )
);

CREATE TABLE "Departments" (
    "DepartmentNumber" varchar(50)   NOT NULL,
    "DepartmentName" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "DepartmentNumber"
     )
);

CREATE TABLE "DepartmentalEmployees" (
    "EmployeeNum" int   NOT NULL,
    "Department" varchar(50)   NOT NULL
);

CREATE TABLE "DepartmentManagers" (
    "DepartmentNumber" varchar(50)   NOT NULL,
    "EmployeeNumb" int   NOT NULL
);

CREATE TABLE "Salaries" (
    "EmployeeNumber" int   NOT NULL,
    "Salary" int   NOT NULL
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Employment_Title_ID" FOREIGN KEY("Employment_Title_ID")
REFERENCES "Titles" ("TitleID");

ALTER TABLE "DepartmentalEmployees" ADD CONSTRAINT "fk_DepartmentalEmployees_EmployeeNum" FOREIGN KEY("EmployeeNum")
REFERENCES "Employees" ("Employee_Number");

ALTER TABLE "DepartmentalEmployees" ADD CONSTRAINT "fk_DepartmentalEmployees_Department" FOREIGN KEY("Department")
REFERENCES "Departments" ("DepartmentNumber");

ALTER TABLE "DepartmentManagers" ADD CONSTRAINT "fk_DepartmentManagers_DepartmentNumber" FOREIGN KEY("DepartmentNumber")
REFERENCES "Departments" ("DepartmentNumber");

ALTER TABLE "DepartmentManagers" ADD CONSTRAINT "fk_DepartmentManagers_EmployeeNumb" FOREIGN KEY("EmployeeNumb")
REFERENCES "Employees" ("Employee_Number");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_EmployeeNumber" FOREIGN KEY("EmployeeNumber")
REFERENCES "Employees" ("Employee_Number");
