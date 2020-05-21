SET TIMING ON
SPOOL UPGRADE_FILE.LOG
DEFINE USER_NAME = &&1

CONNECT &&USER_NAME/oracle;

@./upgrade001/create_table_department.sql
@./upgrade001/create_table_employee.sql
@./upgrade001/create_table_employee_role.sql
@./upgrade001/create_table_employee_skill.sql
@./upgrade001/create_table_role.sql
@./upgrade001/create_table_skill.sql
@./upgrade001/create_table_team.sql
@./upgrade001/create_table_project.sql
@./upgrade001/create_table_stage.sql
@./upgrade001/create_table_task.sql
@./upgrade001/create_indexes.sql &&USER_NAME

-- UNDEFINE USER_NAME
SPOOL OFF