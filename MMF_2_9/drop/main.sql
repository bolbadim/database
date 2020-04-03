--install
--this file is main to drop schema
--this file must be run under system user
-- 1 - username
-- example of run @main dima
DEFINE USERNAME = &&1;

SET VERIFY OFF;
SPOOL DELETE.LOG;

PROMPT Script info:
select sys_context('USERENV','MODULE') from dual;



PROMPT drop_tablespace launched with params &&USERNAME._TABLESPACE
@drop_tablespace &&USERNAME._TABLESPACE

PROMPT drop_schema launched with params &&USERNAME
@drop_schema &&USERNAME

SPOOL OFF
UNDEFINE 