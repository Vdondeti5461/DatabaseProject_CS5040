-- Sequences for Procedures

CREATE SEQUENCE UserID_SEQ START WITH 1 INCREMENT BY 1; -- For first Procedure
CREATE SEQUENCE OrderID_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE DetailID_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE DepositID_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE WithdrawalID_SEQ START WITH 1 INCREMENT BY 1;


-- First Procedure

CREATE OR REPLACE PROCEDURE AddNewUser(
    p_Username IN Users.Username%TYPE,
    p_Password IN Users.Password%TYPE,
    p_Email IN Users.Email%TYPE)
IS
    v_UsernameCount INT;
    v_EmailCount INT;
BEGIN
    -- Check if the username already exists
    SELECT COUNT(*)
    INTO v_UsernameCount
    FROM Users
    WHERE Username = p_Username;

    IF v_UsernameCount > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Username already exists.');
    END IF;

    -- Check if the email already exists
    SELECT COUNT(*)
    INTO v_EmailCount
    FROM Users
    WHERE Email = p_Email;

    IF v_EmailCount > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Email already exists.');
    END IF;

    -- Insert the new user
    INSERT INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt)
    VALUES (UserID_SEQ.NEXTVAL, p_Username, p_Password, p_Email, SYSDATE, SYSDATE);

EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003, 'Error adding new user: ' || SQLERRM);
END;
/
