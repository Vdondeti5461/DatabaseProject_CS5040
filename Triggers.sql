-- triggers

--First trigger
-- Ensure to create sequences before creating trigger . Need two sequences to test this trigger
 CREATE SEQUENCE SessionID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;
 CREATE SEQUENCE LogID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;

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

-- creating a sequece 
  
CREATE SEQUENCE DepositID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;


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


--  Third Trigger

--Create a sequence 
  CREATE SEQUENCE WithdrawalID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;


CREATE OR REPLACE TRIGGER VerifyBalanceBeforeWithdrawal
BEFORE INSERT ON Withdrawals
FOR EACH ROW
DECLARE
  v_Balance NUMBER;
  v_UserID NUMBER;
BEGIN
  -- Retrieve UserID from WalletID
  SELECT UserID INTO v_UserID FROM Wallets WHERE WalletID = :NEW.WalletID;
  
  -- Retrieve the current balance of the user
  SELECT Balance INTO v_Balance FROM Accounts WHERE UserID = v_UserID;

  IF v_Balance < :NEW.Amount THEN
    RAISE_APPLICATION_ERROR(-20002, 'Insufficient funds for withdrawal.');
  END IF;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20003, 'Account or wallet not found.');
END;
/

--Then test the trigger

--Fourth Trigger

--Create a sequence
  
  CREATE SEQUENCE AuditID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;

CREATE OR REPLACE TRIGGER AuditPasswordChange
AFTER UPDATE OF Password ON Users
FOR EACH ROW
BEGIN
  INSERT INTO AuditTrail (AuditID, UserID, Action, Timestamp)
  VALUES (AuditID_SEQ.NEXTVAL, :NEW.UserID, 'Password changed', SYSDATE);
END;
/

--Then Test the trigger


--Fifth Trigger

--sequences already created ( we need logid sequence)

CREATE OR REPLACE TRIGGER LogUserProfileUpdate
AFTER UPDATE ON UserProfiles
FOR EACH ROW
BEGIN
  INSERT INTO Logs (LogID, UserID, Action, Timestamp)
  VALUES (LogID_SEQ.NEXTVAL, :NEW.UserID, 'User profile updated', SYSDATE);
END;
/

--Then Test the trigger

--6th Trigger

--Create sequence 
  
  CREATE SEQUENCE NotificationID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;

CREATE OR REPLACE TRIGGER NotifyOrderStatusChange
AFTER UPDATE OF Status ON Orders
FOR EACH ROW
WHEN (OLD.Status != NEW.Status)
BEGIN
  INSERT INTO Notifications (NotificationID, UserID, Message, Timestamp)
  VALUES (NotificationID_SEQ.NEXTVAL, :NEW.UserID, 'Order ' || :NEW.OrderID || ' status changed to ' || :NEW.Status, SYSDATE);
END;
/
--then test the use cae

--7th Trigger

--crearte sequence

CREATE SEQUENCE LogsID_SEQ START WITH 16 INCREMENT BY 1;

--Trigger

CREATE OR REPLACE TRIGGER trg_log_balance_update
AFTER UPDATE OF Balance ON Accounts
FOR EACH ROW
BEGIN
    INSERT INTO Logs (LogID, UserID, Action, Timestamp)
    VALUES (LogsID_SEQ.NEXTVAL, :NEW.UserID, 'Account balance updated', SYSDATE);
END;
/

--Then test the use case statements


