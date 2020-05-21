CREATE TABLE DEPARTMENT (
    ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
    NAME VARCHAR2(100) NOT NULL
);

COMMENT ON COLUMN DEPARTMENT.ID IS 'Unique value of the primary key for the table';
COMMENT ON COLUMN DEPARTMENT.NAME IS 'Department name';