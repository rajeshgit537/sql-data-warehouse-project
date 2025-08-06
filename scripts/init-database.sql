/*
=========================================================================================
CREATE DATABASE AND SCHEMAS
=========================================================================================
*/

--Drop and recreate our datawarehouse database
IF EXISTS (Select 1 from sys.databases WHERE name="Datawarehouse")
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
Go

create database datawarehouse;

USE datawarehouse;

create schema bronze;
Go
create schema silver;
Go
create schema gold;
Go
