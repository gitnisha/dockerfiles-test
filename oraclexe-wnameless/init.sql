-- https://chartio.com/resources/tutorials/how-to-create-a-user-and-grant-permissions-in-oracle/ 
CREATE USER crashrec IDENTIFIED BY crashrec;

GRANT CONNECT TO crashrec;
GRANT CREATE SESSION TO crashrec;
GRANT ALL PRIVILEGES TO crashrec;
GRANT UNLIMITED TABLESPACE TO crashrec;
-- GRANT DBA TO crashrec;

-- https://access.redhat.com/documentation/en-us/red_hat_jboss_enterprise_application_platform/6.4/html/administration_and_configuration_guide/sect-example_datasources#Example_Oracle_XA_Datsource1
GRANT SELECT ON sys.dba_pending_transactions TO crashrec;
GRANT SELECT ON sys.pending_trans$ TO crashrec;
GRANT SELECT ON sys.dba_2pc_pending TO crashrec;
GRANT EXECUTE ON sys.dbms_xa TO crashrec;
GRANT EXECUTE ON sys.dbms_system TO crashrec; 

-- for user system can call execute dbms_transaction.purge_lost_db_entry('5.19.150115');
grant sysdba to system;
