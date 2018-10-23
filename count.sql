SELECT 
    TABLE_NAME as TableName, 
    TABLE_ROWS as CountofTuples
FROM 
    `information_schema`.`tables` 
WHERE 
    `table_schema` = 'atinnDB';


    
