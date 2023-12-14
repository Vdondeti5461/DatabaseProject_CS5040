--Function use case

--testing the first function

--Testing with valid usedid / Invalid UserId

SELECT GetUserEmail(1) FROM dual;

-- Assuming 999 does not exist

SELECT GetUserEmail(999) FROM dual; 


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

-- Seventh Function

SELECT GetUserRecentTransaction(1) FROM dual; 
SELECT GetUserRecentTransaction(999) FROM dual; 


SELECT t.TransactionID, t.OrderID, t.Timestamp, o.UserID, o.Type, o.Status
FROM Transactions t
JOIN Orders o ON t.OrderID = o.OrderID
WHERE o.UserID = 1
ORDER BY t.Timestamp DESC;

SELECT GetUserRecentTransaction(1) FROM dual;











