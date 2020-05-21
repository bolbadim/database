DEFINE USER_NAME = &&1
DEFINE TBS_LOCATION = &&2
DEFINE TBS_TYPE = &&3

DEFINE DATA_TBSP_NAME = '&&USER_NAME._&&TBS_TYPE'
DEFINE DATA_FILE_NAME = '&&TBS_LOCATION&&DATA_TBSP_NAME..dbf'

CREATE TABLESPACE &&DATA_TBSP_NAME
    DATAFILE '&&DATA_FILE_NAME' SIZE 10M AUTOEXTEND ON NEXT 10M MAXSIZE 10G;