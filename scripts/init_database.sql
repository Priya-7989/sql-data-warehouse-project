/*
Create Database and Schemas
-------------------------------------
Script Purpose:
  This script creates a new Database named 'DataWarehouse' after checking if it already exists.
  If the db already exists, it is dropped and recreated. Additionally, the script sets up three schemas for the layers 
  within the db: 'bronze', 'silver' and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' db if it already exists.
  All data in the db wil be Permanently Deleted.
  Ensure you have backups before running this script.
*/

USE master;
GO

-- Drop and Recreate the 'DataWarehouse' database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Now we create the database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO
  
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
