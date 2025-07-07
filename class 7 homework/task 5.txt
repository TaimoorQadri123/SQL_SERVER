CREATE PROCEDURE NestedProcedure AS
BEGIN
    EXEC uspGetSalesTerritory;
    EXEC uspGetTotals 'France';
END;




SELECT session_id, login_time, program_name
FROM sys.dm_exec_sessions
WHERE login_name = 'sa' AND is_user_process = 1;
