CREATE TABLE TASK (
    ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
    pkey VARCHAR2(100) NOT NULL,
    STAGE_ID NUMBER NOT NULL,
    ASSIGNEE_ID NUMBER,
    PROJECT_ID NUMBER NOT NULL,
    NAME VARCHAR2(150) NOT NULL,
    STATUS VARCHAR2(100) NOT NULL,
    START_DATE DATE,
    END_DATE DATE
);

COMMENT ON COLUMN TASK.ID IS 'Unique value of the primary key for the table';
COMMENT ON COLUMN TASK.pkey IS 'Describes stage that task belongs to';
COMMENT ON COLUMN TASK.STAGE_ID IS 'Reference to the stage that the task entity is linked to';
COMMENT ON COLUMN TASK.ASSIGNEE_ID IS 'Reference the employee performing a task';
COMMENT ON COLUMN TASK.PROJECT_ID IS 'Reference project that task belongs to';
COMMENT ON COLUMN TASK.NAME IS 'Task name';
COMMENT ON COLUMN TASK.STATUS IS 'Task status';