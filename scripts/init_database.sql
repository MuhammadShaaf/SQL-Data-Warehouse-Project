/*
=======================================================
Create Database and Schemas
=======================================================
Script Purpose:
  This Script Create a new database named "DataWarehouse" after checking it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  with in the database: 'brzonze', 'silver' and 'gold'.

WARNING:
  Running this script will drop the 'DataWarehouse' dataset if it exists.
  All data in the dataset will be deleted permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.
*/


USE master;

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse'
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END
GO;

-- Create DataWarehouse Database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
