#!/bin/bash

set -u

echo "=========================================="
echo "     PL/SQL TRIGGER AUTOGRADING"
echo "=========================================="

# Find answers.sql automatically

ANSWER_FILE=$(find . -name "answers.sql" -type f | head -n 1)

if [ -z "$ANSWER_FILE" ]; then
echo "FAIL: answers.sql not found."
exit 1
fi

echo "Found answers file: $ANSWER_FILE"

# Check CREATE TRIGGER

if ! grep -Eiq "CREATE[[:space:]]+(OR[[:space:]]+REPLACE[[:space:]]+)?TRIGGER" "$ANSWER_FILE"; then
echo "FAIL: CREATE TRIGGER statement not found."
exit 1
fi

echo "PASS: Trigger declaration found."

# Check Employee table

if ! grep -Eiq "ON[[:space:]]+Employee" "$ANSWER_FILE"; then
echo "FAIL: Employee table is not used in the trigger."
exit 1
fi

echo "PASS: Employee table found."

# Check AFTER INSERT

if ! grep -Eiq "AFTER[[:space:]]+INSERT" "$ANSWER_FILE"; then
echo "FAIL: AFTER INSERT trigger not found."
exit 1
fi

echo "PASS: AFTER INSERT found."

# Check DBMS_OUTPUT.PUT_LINE

if ! grep -Eiq "DBMS_OUTPUT[[:space:]]*.[[:space:]]*PUT_LINE" "$ANSWER_FILE"; then
echo "FAIL: DBMS_OUTPUT.PUT_LINE not found."
exit 1
fi

echo "PASS: DBMS_OUTPUT.PUT_LINE found."

# Check trigger body

if ! grep -Eiq "BEGIN" "$ANSWER_FILE"; then
echo "FAIL: Trigger BEGIN block not found."
exit 1
fi

echo "PASS: Trigger body found."

# Check END

if ! grep -Eiq "END" "$ANSWER_FILE"; then
echo "FAIL: Trigger END statement not found."
exit 1
fi

echo "PASS: Trigger END found."

echo "=========================================="
echo "       ALL TESTS PASSED"
echo "=========================================="

exit 0
