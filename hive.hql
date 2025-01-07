-- Creating a database
CREATE DATABASE IF NOT EXISTS population;
SHOW DATABASES;

USE population;

-- Dropping the table in case the table already exists
DROP TABLE IF EXISTS popestimate;

-- Creating a table
CREATE TABLE popestimate(
    SEX INT,
    AGE INT,
    ESTIMATESBASE2020 BIGINT,
    POPESTIMATE2020 BIGINT,
    POPESTIMATE2021 BIGINT,
    POPESTIMATE2022 BIGINT,
    POPESTIMATE2023 BIGINT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
TBLPROPERTIES ("skip.header.line.count"="1");

-- Load data into the table
LOAD DATA LOCAL INPATH 'nc-est2023-agesex-res.csv' INTO TABLE popestimate;

-- Setting the query result to print with column name
set hive.cli.print.header=true;
-- set hive.resultset.use.unique.column.names=false;

-- Check if the data has been loaded
SELECT * FROM popestimate;