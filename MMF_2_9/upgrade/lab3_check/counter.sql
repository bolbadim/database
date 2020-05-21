--set serveroutput on size 30000;
declare
    num NUMBER;    
begin
    select count(id) into num from department;
    dbms_output.put_line('department, number of rows: ' || num);
    select count(id) into num from employee;
    dbms_output.put_line('employee, number of rows: ' || num);
    select count(id) into num from employee_role;
    dbms_output.put_line('employee_role, number of rows: ' || num);
    select count(id) into num from employee_skill;
    dbms_output.put_line('employee_skill, number of rows: ' || num);
    select count(id) into num from role;
    dbms_output.put_line('role, number of rows: ' || num);
    select count(id) into num from skill;
    dbms_output.put_line('skill, number of rows: ' || num);
    select count(id) into num from team;
    dbms_output.put_line('team, number of rows: ' || num);
    select count(id) into num from project;
    dbms_output.put_line('project, number of rows: ' || num);
    select count(id) into num from stage;
    dbms_output.put_line('stage, number of rows: ' || num);
    select count(id) into num from task;
    dbms_output.put_line('task, number of rows: ' || num);
    end;
/