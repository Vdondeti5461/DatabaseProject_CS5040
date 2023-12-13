--first trigger Test case

-- Insert a mock session
INSERT INTO UserSessions (SessionID, UserID, Token, ExpiresAt)
VALUES (SessionID_SEQ.NEXTVAL, 1, 'NikVam', SYSDATE + 7);

-- Query the Logs table to verify the trigger action
SELECT * FROM Logs WHERE UserID = 1;


--second trigger use case

-- Insert a mock deposit (replace the WalletID and UserID with actual values from your database)
INSERT INTO Deposits (DepositID, WalletID, Amount, Timestamp)
VALUES (DepositID_SEQ.NEXTVAL, 1, 1000.00, SYSDATE);

-- Query the Accounts table to verify the trigger action (replace the UserID with the actual UserID linked to the WalletID used above)
SELECT * FROM Accounts WHERE UserID = [Your UserID];


--Third Trigger use case

-- Attempt a mock withdrawal (replace the WalletID with an actual value from your database and set an Amount greater than the account balance)
INSERT INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp)
VALUES (WithdrawalID_SEQ.NEXTVAL, 1, 11000, SYSDATE);

--if withdrawl amount greated than balance it will throw error as insufficient funds

--Fourth Trigger use case

-- Update a user's password (replace UserID and Password with appropriate values)
UPDATE Users
SET Password = 'NikCHVam'
WHERE UserID = 1;

--after update check user table for password change for userid

--Fifth Tigger Use case

-- Update a user's profile (replace ProfileID with an actual value)
UPDATE UserProfiles
SET FirstName = 'RajaLe', LastName = 'Manra'
WHERE ProfileID = 1;

-- Query the Logs table to verify the trigger action
SELECT * FROM Logs WHERE UserID = [Your UserID] AND Action = 'User profile updated';

--sixth trigger use case

-- Update an order's status (replace OrderID with an actual value and set a new status)
UPDATE Orders
SET Status = 'Executed'
WHERE OrderID = 1;

-- Query the Notifications table to verify the trigger action
SELECT * FROM Notifications WHERE UserID = 1;


-- Query the AuditTrail table to verify the trigger action
SELECT * FROM AuditTrail WHERE UserID = 1;

--Seventh Trigger Use case

--Update account

UPDATE Accounts
SET Balance = Balance + 100 
WHERE AccountID = 1;

--check logs table

SELECT * FROM Logs WHERE Action = 'Account balance updated';


