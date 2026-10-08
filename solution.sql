create database jofin;
use jofin;
SET SERVEROUTPUT ON;
CREATE TABLE Student18 (
    Student_ID NUMBER(5) PRIMARY KEY,
    Student_Name VARCHAR2(30),
    Course_Name VARCHAR2(30)
);
CREATE OR REPLACE PROCEDURE Add_Student18 (
    P_ID NUMBER,
    P_NAME VARCHAR2,
    P_COURSE VARCHAR2
);
IS
BEGIN
    INSERT INTO Student18
    VALUES (P_ID, P_NAME, P_COURSE);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully');
END;
/
EXEC Add_Student18(101, 'Arun', 'BSc IT');
SELECT * FROM Student18;
