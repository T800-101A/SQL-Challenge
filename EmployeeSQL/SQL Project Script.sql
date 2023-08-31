

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;



--------------------------------- Creation of the 6 Tables : ---------------------------------

CREATE TABLE "titles" (
    "title_id" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")
);


CREATE TABLE "employees" (
    "emp_no" INT  NOT NULL,
    "emp_tittle_id" VARCHAR(50),
    "birth_date" VARCHAR(10) NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "sex"   VARCHAR(3) NOT NULL,
    "hire_date" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);


CREATE TABLE "departments" (
    "dept_no" VARCHAR(5)   NOT NULL,
    "dept_name" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")
);


CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(5)  NOT NULL,
    "emp_no" INT   NOT NULL);
   

CREATE TABLE "dept_emp" (
    "emp_no" INT  NOT NULL,
    "dept_no" VARCHAR(5)   NOT NULL
);



CREATE TABLE "salaries" (
    "emp_no" INT  NOT NULL,
    "salary" INT  NOT NULL
);





--------------------------------- Creating Table Relation with their Foreign Keys : ---------------------------------


ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_tittle_id" FOREIGN KEY("emp_tittle_id")
REFERENCES "titles" ("title_id");



ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");



ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");



ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");



--------------------------------- Quering Data to verify ---------------------------------


select * from titles t ;
select * from employees e ;
select * from departments d ;
select * from dept_manager dm ;
select * from dept_emp de ;
select * from salaries s ;




