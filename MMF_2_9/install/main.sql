--install
--this file is main to creat schema
--this file must be run under system user
-- 1 - username
-- 2 - location
-- example of run @main dima C:\oracle\oradata\ORCL\tablespaces
DEFINE USERNAME = &&1;
DEFINE LOCATION = &&2;

SET VERIFY OFF;
SPOOL INSTALL.LOG;

PROMPT Script info:
select sys_context('USERENV','MODULE') from dual;



PROMPT create_tablespaces.sql was runned with params &&USERNAME._TABLESPACE &&LOCATION &&USERNAME._IND &&LOCATION
@create_tablespaces &&USERNAME._TABLESPACE &&LOCATION &&USERNAME._IND &&LOCATION

PROMPT create_user.sql runned with params&&USERNAME &&USERNAME._PASS 
@create_user &&USERNAME &&USERNAME._PASS

PROMPT install/privilege_schema.sql runned with &&USERNAME
@privilege_schema &&USERNAME

SPOOL OFF
UNDEFINE USERNAME
UNDEFINE LOCATION