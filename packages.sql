--Package Specification

CREATE OR REPLACE PACKAGE UserManagement AS

    PROCEDURE AddNewUser(
        p_Username IN Users.Username%TYPE,
        p_Password IN Users.Password%TYPE,
        p_Email IN Users.Email%TYPE);

    PROCEDURE UpdateUserProfile(
        p_UserID IN UserProfiles.UserID%TYPE,
        p_FirstName IN UserProfiles.FirstName%TYPE,
        p_LastName IN UserProfiles.LastName%TYPE,
        p_DOB IN UserProfiles.DOB%TYPE,
        p_Country IN UserProfiles.Country%TYPE);

    PROCEDURE ChangeUserPassword(
        p_UserID IN Users.UserID%TYPE,
        p_NewPassword IN Users.Password%TYPE);

    FUNCTION GetUserEmail(p_UserID IN Users.UserID%TYPE) RETURN VARCHAR2;

END UserManagement;
/

--Package Body

CREATE OR REPLACE PACKAGE BODY UserManagement AS

    PROCEDURE AddNewUser(
        p_Username IN Users.Username%TYPE,
        p_Password IN Users.Password%TYPE,
        p_Email IN Users.Email%TYPE) IS
        v_UsernameCount INT;
        v_EmailCount INT;
    BEGIN
        SELECT COUNT(*)
        INTO v_UsernameCount
        FROM Users
        WHERE Username = p_Username;

        IF v_UsernameCount > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Username already exists: ' || p_Username);
            RAISE_APPLICATION_ERROR(-20001, 'Username already exists.');
        END IF;

        SELECT COUNT(*)
        INTO v_EmailCount
        FROM Users
        WHERE Email = p_Email;

        IF v_EmailCount > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Email already exists: ' || p_Email);
            RAISE_APPLICATION_ERROR(-20002, 'Email already exists.');
        END IF;

        INSERT INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt)
        VALUES (UserID_SEQ.NEXTVAL, p_Username, p_Password, p_Email, SYSDATE, SYSDATE);
    END AddNewUser;

    PROCEDURE UpdateUserProfile(
        p_UserID IN UserProfiles.UserID%TYPE,
        p_FirstName IN UserProfiles.FirstName%TYPE,
        p_LastName IN UserProfiles.LastName%TYPE,
        p_DOB IN UserProfiles.DOB%TYPE,
        p_Country IN UserProfiles.Country%TYPE) IS
    BEGIN
        UPDATE UserProfiles
        SET FirstName = p_FirstName, 
            LastName = p_LastName, 
            DOB = p_DOB, 
            Country = p_Country
        WHERE UserID = p_UserID;
    END UpdateUserProfile;

    PROCEDURE ChangeUserPassword(
        p_UserID IN Users.UserID%TYPE,
        p_NewPassword IN Users.Password%TYPE) IS
    BEGIN
        UPDATE Users
        SET Password = p_NewPassword
        WHERE UserID = p_UserID;
    END ChangeUserPassword;

    FUNCTION GetUserEmail(p_UserID IN Users.UserID%TYPE) RETURN VARCHAR2 IS
        v_Email Users.Email%TYPE;
    BEGIN
        SELECT Email INTO v_Email
        FROM Users
        WHERE UserID = p_UserID;
        RETURN v_Email;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
    END GetUserEmail;

END UserManagement;
/


--second package

--package specification

CREATE OR REPLACE PACKAGE FinancialOperations AS

    PROCEDURE ProcessWithdrawal(
        p_UserID IN Accounts.UserID%TYPE,
        p_Amount IN NUMBER);

    PROCEDURE RecordDeposit(
        p_UserID IN Users.UserID%TYPE,
        p_Amount IN DECIMAL);

END FinancialOperations;
/

--package body

CREATE OR REPLACE PACKAGE BODY FinancialOperations AS

    PROCEDURE ProcessWithdrawal(
        p_UserID IN Accounts.UserID%TYPE,
        p_Amount IN NUMBER) IS
        v_Balance NUMBER;
    BEGIN
        SELECT Balance INTO v_Balance
        FROM Accounts
        WHERE UserID = p_UserID;

        IF v_Balance < p_Amount THEN
            RAISE_APPLICATION_ERROR(-20011, 'Insufficient funds.');
        END IF;

        UPDATE Accounts
        SET Balance = Balance - p_Amount
        WHERE UserID = p_UserID;

        INSERT INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp)
        VALUES (WithdrawalID_SEQ.NEXTVAL, p_UserID, p_Amount, SYSDATE);
    END ProcessWithdrawal;

    PROCEDURE RecordDeposit(
        p_UserID IN Users.UserID%TYPE,
        p_Amount IN DECIMAL) IS
        v_WalletID Wallets.WalletID%TYPE;
    BEGIN
        SELECT WalletID INTO v_WalletID
        FROM Wallets
        WHERE UserID = p_UserID;

        INSERT INTO Deposits (DepositID, WalletID, Amount, Timestamp)
        VALUES (DepositID_SEQ.NEXTVAL, v_WalletID, p_Amount, SYSDATE);
    END RecordDeposit;

END FinancialOperations;
/

-- create sequences required

CREATE SEQUENCE WithdrawalID_SEQ START WITH 16 INCREMENT BY 1;
CREATE SEQUENCE DepositID_SEQ START WITH 16 INCREMENT BY 1;

