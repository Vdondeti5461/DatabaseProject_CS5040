-- triggers

--First trigger
-- Ensure to create sequences before creating trigger . Need two sequences to test this trigger
--1 CREATE SEQUENCE SessionID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;
--2 CREATE SEQUENCE LogID_SEQ START WITH 1 INCREMENT BY 1 NOMAXVALUE;

--Trigger LogUserLogin

CREATE OR REPLACE TRIGGER LogUserLogin
AFTER INSERT ON UserSessions
FOR EACH ROW
BEGIN
  INSERT INTO Logs (LogID, UserID, Action, Timestamp)
  VALUES (LogID_SEQ.NEXTVAL, :NEW.UserID, 'User logged in', SYSDATE);
END;
/


--Second Trigger 

-- creating a sequece CREATE SEQUENCE DepositID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;


CREATE OR REPLACE TRIGGER UpdateAccountAfterDeposit
AFTER INSERT ON Deposits
FOR EACH ROW
DECLARE
  v_Balance Accounts.Balance%TYPE;
BEGIN
  -- Retrieve the current balance of the user
  SELECT Balance INTO v_Balance
  FROM Accounts
  WHERE UserID = (SELECT UserID FROM Wallets WHERE WalletID = :NEW.WalletID);

  -- Update the balance
  UPDATE Accounts
  SET Balance = v_Balance + :NEW.Amount
  WHERE UserID = (SELECT UserID FROM Wallets WHERE WalletID = :NEW.WalletID);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001, 'Account not found for deposit.');
END;
/

-- then test the use case 

