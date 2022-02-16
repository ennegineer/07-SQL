CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title" VARCHAR(10)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);
DROP TABLE "dept_emp"
CREATE TABLE "dept_emp" (
    "dep_emp_id" SERIAL PRIMARY KEY,
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL
     );

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "emp_no" INT   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "dept_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(10)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");