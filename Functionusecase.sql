--Function use case

--testing the first function

--Testing with valid usedid / Invalid UserId

SELECT GetUserEmail(1) FROM dual;
SELECT GetUserEmail(999) FROM dual; -- Assuming 999 does not exist


--second function

--Testing to check userbalance / Not available

SELECT GetUserBalance(1) FROM dual;
SELECT GetUserBalance(999) FROM dual; 


--Third Function

--Testing to count orders

SELECT CountUserOrders(1) FROM dual;
SELECT CountUserOrders(999) FROM dual;

--Fourth Function

SELECT GetInstrumentType(1) FROM dual; 
SELECT GetInstrumentType(999) FROM dual; 

--Fifth Function

SELECT GetTotalDeposits(1) FROM dual; 
SELECT GetTotalDeposits(999) FROM dual;

--Sixth Function

SELECT CalculateTotalPortfolioValue_V3(1) FROM dual; 
SELECT CalculateTotalPortfolioValue_V3(999) FROM dual; 

--seventh Funtion

SELECT GetUserRecentTransaction(1) FROM dual; 
SELECT GetUserRecentTransaction(999) FROM dual; 

--testing another way

INSERT INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) 
VALUES (1, 'TestUser', 'TestPass', 'testuser@example.com', SYSDATE, SYSDATE);

--Inserting multiple orders to user1

-- Inserting first order
INSERT INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) 
VALUES (101, 1, 1, 'Buy', 'Open', SYSDATE - 7, SYSDATE - 7);

-- Inserting second order
INSERT INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) 
VALUES (102, 1, 2, 'Sell', 'Closed', SYSDATE - 5, SYSDATE - 4);

-- Inserting third order (most recent)
INSERT INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) 
VALUES (103, 1, 3, 'Buy', 'Executed', SYSDATE - 1, SYSDATE);

--Inserting transactions to orders

-- Inserting a transaction for the first order
INSERT INTO Transactions (TransactionID, OrderID, Timestamp) 
VALUES (201, 101, SYSDATE - 7); -- Assuming TransactionID starts at 201

-- Inserting a transaction for the second order
INSERT INTO Transactions (TransactionID, OrderID, Timestamp) 
VALUES (202, 102, SYSDATE - 5);

-- Inserting a transaction for the third (most recent) order
INSERT INTO Transactions (TransactionID, OrderID, Timestamp) 
VALUES (203, 103, SYSDATE - 1);

--Getting recent transactions 

SELECT t.TransactionID, t.OrderID, t.Timestamp, o.UserID, o.Type, o.Status
FROM Transactions t
JOIN Orders o ON t.OrderID = o.OrderID
WHERE o.UserID = 1
ORDER BY t.Timestamp DESC;

SELECT GetUserRecentTransaction(1) FROM dual;











