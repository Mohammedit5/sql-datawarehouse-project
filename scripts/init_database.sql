/*

This's for init_database:


Create Database and Schemas
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking create the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
*/

-- here we're using the master DB

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

  -- then use our new DB
  
USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
