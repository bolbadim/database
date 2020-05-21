CREATE TABLE EMPLOYEE_ROLE (
    ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
    EMPLOYEE_ID NUMBER NOT NULL,
    ROLE_ID NUMBER NOT NULL
);

COMMENT ON COLUMN EMPLOYEE_ROLE.ID IS 'Unique value of the primary key for the table';
COMMENT ON COLUMN EMPLOYEE_ROLE.EMPLOYEE_ID IS 'Reference to employee table';
COMMENT ON COLUMN EMPLOYEE_ROLE.EMPLOYEE_ID IS 'Reference to role table';