## -- PL/SQL Trigger Assignment

-- Question:
-- Create a trigger that automatically displays a message
-- after inserting a new employee record into the Employee table.

CREATE TABLE Employee (
EmpID NUMBER(5) PRIMARY KEY,
EmpName VARCHAR2(20),
DeptID NUMBER(5)
);

-- Write your trigger program below.

-- Your solution should:
-- 1. Create a trigger.
-- 2. Execute AFTER INSERT.
-- 3. Display a message using DBMS_OUTPUT.PUT_LINE.
