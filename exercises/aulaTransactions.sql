

/*
BEGIN TRY
SELECT 1/0
END TRY

BEGIN CATCH  
SELECT ERROR_NUMBER() AS ErrorNumber
,ERROR_SEVERITY() AS ErrorSeverity
,ERROR_STATE() AS ErrorState
,ERROR_PROCEDURE() AS ErrorProcedure
,ERROR_LINE() AS ErrorLine
,ERROR_MESSAGE() AS ErrorMessage
END CATCH;


-- Begin the transaction
BEGIN TRANSACTION;-- Execute SQL operations
SELECT 1/0
IF @@ERROR = 0
BEGIN-- Commit the transaction
COMMIT;
PRINT 'Transaction committed successfully.';
END
ELSE
BEGIN-- Rollback the transaction in case of an error
ROLLBACK;
PRINT 'Transaction rolled back due to an error.';
END


-- Check the initial transaction count
PRINT 'Initial @@TRANCOUNT: ' + CAST(@@TRANCOUNT AS NVARCHAR);-- Begin a transaction
BEGIN TRANSACTION;
PRINT 'After BEGIN TRANSACTION: ' + CAST(@@TRANCOUNT AS NVARCHAR);-- Begin a nested transaction
BEGIN TRANSACTION;
PRINT 'After Nested BEGIN TRANSACTION: ' + CAST(@@TRANCOUNT AS NVARCHAR);-- Commit the inner transaction
COMMIT TRANSACTION;
PRINT 'After Inner COMMIT: ' + CAST(@@TRANCOUNT AS NVARCHAR);-- Commit the outer transaction
COMMIT TRANSACTION;
PRINT 'After Outer COMMIT: ' + CAST(@@TRANCOUNT AS NVARCHAR);



--Start a transaction
BEGIN TRANSACTION;--Perform the first operation
INSERT INTO sales.staffs ( last_name,first_name, phone,email,active, store_id) VALUES ( 'Doe','John ', 50000, 'mail@qualquer',1,1);--Create a savepoint
SAVE TRANSACTION SavePoint1;--Perform the second operation
INSERT INTO sales.staffs ( last_name,first_name, phone,email,active, store_id) VALUES ( 'Smith','Jane ', 55000,'mails@ulu',1,1);--Simulate an error
IF (1 = 1) --Example condition, replace with actual checks
BEGIN
PRINT 'An error occurred. Rolling back to SavePoint1.';
ROLLBACK TRANSACTION SavePoint1; --Roll back to the savepoint
END--Commit the remaining transaction
COMMIT;--Verify the results
SELECT * FROM sales.staffs
WHERE staff_id>100; ----> vai ficar so o primeiro na tabela por causa do roolback entrar sempre 1=1


*/


