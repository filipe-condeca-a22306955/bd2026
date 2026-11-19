

/*
CREATE PROCEDURE GetCategories
AS
BEGIN
    -- Select all data from the Categories table
    SELECT * 
    FROM production.categories;
END

EXEC GetCategories;

CREATE PROC getAllTables @DB NVARCHAR(255)
AS
BEGIN
    SELECT TABLE_SCHEMA, TABLE_NAME, TABLE_CATALOG
    FROM INFORMATION_SCHEMA
    WHERE
    TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG=@DB;
END




CREATE FUNCTION CalculateSquare(@InputNumber INT)
RETURNS INT
AS
BEGIN
DECLARE @SquareResult INT

SET @SquareResult= @InputNumber * @InputNumber

RETURN @SquareResult
END

DECLARE @InputVAlue INT=5
DECLARE @Result INT

SET @Result =0
SELECT @Result = dbo.CalculateSquare(@InputVAlue)

PRINT 'Square of '+ CAST(@InputVAlue AS VARCHAR)+ ' is: '+ CAST(@Result AS VARCHAR)



CREATE FUNCTION GetProductByCategory(@TargetCategory INT)
RETURNS TABLE
AS
RETURN
(
    SELECT product_name, product_id
    FROM production.products
    WHERE product_id=@TargetCategory
);


DECLARE @TargetCategory INT=1

SELECT * 
FROM dbo.GetProductByCategory(@TargetCategory);


17.1.3.1
CREATE PROCEDURE ViewProcedures
AS
BEGIN
    
    SELECT 
    name AS ProcedureName,
    SCHEMA_NAME(schema_id) AS SchemaName,
    create_date,
    modify_date
    FROM sys.objects
    WHERE type = 'P'
    ORDER BY name
END

ALTER PROCEDURE ViewProcedures
AS
BEGIN
    
    SELECT 
    name AS ProcedureName,
    SCHEMA_NAME(schema_id) AS SchemaName,
    create_date,
    modify_date
    FROM sys.objects
    WHERE type = 'p'
    ORDER BY name
END

EXEC dbo.ViewProcedures;

17.1.3.2

CREATE PROCEDURE GetTableByName @TableName VARCHAR(255)
AS
BEGIN
    -- Select data from the Categories table for the specified CategoryID
    SELECT * 
    FROM sys.objects
    WHERE name=@TableName
END

EXEC dbo.GetTableByName @TableName= 'products'


17.1.3.3
CREATE FUNCTION GetFunctions()
RETURNS TABLE
AS
 RETURN (

    SELECT 
    name AS FunctionName,
    SCHEMA_NAME(schema_id) AS SchemaName,
    type_desc AS FunctionType,
    create_date,
    modify_date
    FROM sys.objects
    WHERE type IN ('FN', 'TF', 'IF')

    );

SELECT * FROM GetFunctions();
*/





