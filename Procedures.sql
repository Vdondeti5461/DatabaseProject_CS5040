--Sequences for Procedures
-- First Procedure AddNew User

CREATE SEQUENCE UserID_SEQ START WITH 1 INCREMENT BY 1;

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


-- Second Procedure UpdateUserProfile

CREATE OR REPLACE PROCEDURE UpdateUserProfile(
    p_UserID IN UserProfiles.UserID%TYPE,
    p_FirstName IN UserProfiles.FirstName%TYPE,
    p_LastName IN UserProfiles.LastName%TYPE,
    p_DOB IN UserProfiles.DOB%TYPE,
    p_Country IN UserProfiles.Country%TYPE)
IS
BEGIN
    UPDATE UserProfiles
    SET FirstName = p_FirstName, 
        LastName = p_LastName, 
        DOB = p_DOB, 
        Country = p_Country
    WHERE UserID = p_UserID;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'User profile not found.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003, 'Error occurred: ' || SQLERRM);
END;
/


    
--Third Procedure ChangeUserPassword

CREATE OR REPLACE PROCEDURE ChangeUserPassword(
    p_UserID IN Users.UserID%TYPE,
    p_NewPassword IN Users.Password%TYPE)
IS
BEGIN
  UPDATE Users
  SET Password = p_NewPassword
  WHERE UserID = p_UserID;

  IF SQL%ROWCOUNT = 0 THEN
    RAISE_APPLICATION_ERROR(-20022, 'User not found.');
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20023, 'Error occurred: ' || SQLERRM);
END;
/


--procedure 4

--sequence

CREATE SEQUENCE seq_WithdrawalID 
START WITH 16 
INCREMENT BY 1;

--procedure

CREATE OR REPLACE PROCEDURE ProcessWithdrawal(
    p_UserID IN Accounts.UserID%TYPE,
    p_Amount IN NUMBER)
IS
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
  VALUES (seq_WithdrawalID.NEXTVAL, p_UserID, p_Amount, SYSDATE);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20012, 'Account not found.');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20013, 'Error occurred: ' || SQLERRM);
END;
/

--Fifth Procedure

CREATE SEQUENCE seq_DepositID START WITH 16 INCREMENT BY 1; 

-- will start the sequence by next deposit

--procedure

CREATE OR REPLACE PROCEDURE RecordDeposit(
    p_UserID IN Users.UserID%TYPE,
    p_Amount IN DECIMAL)
IS
  v_WalletID Wallets.WalletID%TYPE;
BEGIN
  -- Retrieve the WalletID for the given UserID
  SELECT WalletID INTO v_WalletID
  FROM Wallets
  WHERE UserID = p_UserID;

  -- Insert the deposit into the Deposits table
  INSERT INTO Deposits (DepositID, WalletID, Amount, Timestamp)
  VALUES (seq_DepositID.NEXTVAL, v_WalletID, p_Amount, SYSDATE);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20018, 'User wallet not found.');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20019, 'Error occurred: ' || SQLERRM);
END;
/


--sixth Procedure

--create sequence
    
    CREATE SEQUENCE seq_SessionID START WITH 16 INCREMENT BY 1;

--procedure

CREATE OR REPLACE PROCEDURE RecordUserLogin(
    p_UserID IN Users.UserID%TYPE,
    p_LoginTime IN TIMESTAMP)
IS
BEGIN
  INSERT INTO UserSessions (SessionID, UserID, Token, ExpiresAt)
  VALUES (seq_SessionID.NEXTVAL, p_UserID, 'GeneratedToken', p_LoginTime + INTERVAL '7' DAY); -- Assuming token generation logic and 7 days validity

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20007, 'User not found.');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20008, 'Error occurred: ' || SQLERRM);
END;
/



