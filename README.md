# PL/SQL Trigger Assignment

## Question

Create a trigger that automatically displays a message after inserting a new employee record into the `Employee` table.

## Employee Table

The `Employee` table contains the following columns:

| Column  | Data Type    |
| ------- | ------------ |
| EmpID   | NUMBER(5)    |
| EmpName | VARCHAR2(20) |
| DeptID  | NUMBER(5)    |

## Requirements

The PL/SQL program must:

1. Create an `Employee` table.
2. Create a trigger on the `Employee` table.
3. The trigger must execute automatically after an `INSERT`.
4. The trigger must display a message after a new employee is inserted.
5. Use `DBMS_OUTPUT.PUT_LINE` to display the message.

## Example

When the following record is inserted:

```sql
INSERT INTO Employee VALUES (101, 'Arun', 10);
```

The trigger should automatically display a message such as:

```text
New employee record inserted successfully.
```

The exact wording of the message may vary.

## Submission

Students should write their solution in:

```text
answers.sql
```

Do not modify:

```text
test.sh
```

The GitHub Actions workflow will automatically check the submitted program.
