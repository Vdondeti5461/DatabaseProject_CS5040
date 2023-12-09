-- Functions 


--Function 1

CREATE OR REPLACE FUNCTION GetUserEmail(p_UserID IN Users.UserID%TYPE)
RETURN VARCHAR2 IS
  v_Email Users.Email%TYPE;
BEGIN
  SELECT Email INTO v_Email
  FROM Users
  WHERE UserID = p_UserID;

  RETURN v_Email;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'No user found with the given UserID.';
  WHEN OTHERS THEN
    RETURN 'Error occurred: ' || SQLERRM;
END;
/


--Function 2
CREATE OR REPLACE FUNCTION GetUserBalance(p_UserID IN Accounts.UserID%TYPE)
RETURN NUMBER IS
  v_Balance Accounts.Balance%TYPE;
BEGIN
  SELECT Balance INTO v_Balance
  FROM Accounts
  WHERE UserID = p_UserID;

  RETURN v_Balance;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001, 'No account found for the given UserID.');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20002, 'Error occurred: ' || SQLERRM);
END;
/


--function 3

CREATE OR REPLACE FUNCTION CountUserOrders(p_UserID IN Orders.UserID%TYPE)
RETURN NUMBER IS
  v_OrderCount NUMBER;
BEGIN
  SELECT COUNT(*)
  INTO v_OrderCount
  FROM Orders
  WHERE UserID = p_UserID;

  RETURN v_OrderCount;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0; -- Assuming no orders means count is 0
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20006, 'Error occurred: ' || SQLERRM);
END;
/


--function 4

CREATE OR REPLACE FUNCTION GetInstrumentType(p_InstrumentID IN Instruments.InstrumentID%TYPE)
RETURN VARCHAR2 IS
  v_Type Instruments.Type%TYPE;
BEGIN
  SELECT Type INTO v_Type
  FROM Instruments
  WHERE InstrumentID = p_InstrumentID;

  RETURN v_Type;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20009, 'Instrument not found.');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20010, 'Error occurred: ' || SQLERRM);
END;
/

--Function f5

CREATE OR REPLACE FUNCTION GetTotalDeposits(p_UserID IN Users.UserID%TYPE)
RETURN DECIMAL IS
  v_TotalDeposits DECIMAL(10, 2) := 0;
BEGIN
  SELECT SUM(d.Amount)
  INTO v_TotalDeposits
  FROM Deposits d
  INNER JOIN Wallets w ON d.WalletID = w.WalletID
  WHERE w.UserID = p_UserID;

  RETURN NVL(v_TotalDeposits, 0);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0; -- Assuming no deposits means total is 0
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20014, 'Error occurred: ' || SQLERRM);
END;
/


-- Function 6

CREATE OR REPLACE FUNCTION CheckPasswordStrength(p_UserID IN Users.UserID%TYPE)
RETURN VARCHAR2 IS
  v_Password Users.Password%TYPE;
BEGIN
  SELECT Password INTO v_Password
  FROM Users
  WHERE UserID = p_UserID;

  IF LENGTH(v_Password) >= 8 THEN
    RETURN 'TRUE';
  ELSE
    RETURN 'FALSE';
  END IF;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20020, 'User not found.');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20021, 'Error occurred: ' || SQLERRM);
END;
/

