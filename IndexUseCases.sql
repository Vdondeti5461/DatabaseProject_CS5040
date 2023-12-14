--First index usecase

SELECT * FROM Transactions WHERE Timestamp BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD') AND TO_DATE('2023-01-31', 'YYYY-MM-DD');

--changing time period to get data and above query give no data

SELECT * FROM Transactions WHERE Timestamp BETWEEN TO_DATE('2023-12-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-31', 'YYYY-MM-DD');


--second index Usecase

SELECT * FROM Transactions WHERE OrderID = 1;


--Third index Usecase

SELECT * FROM Orders WHERE UserID = 1;

--some other indexes use case which is already created


SELECT * FROM Users WHERE Username = 'user1';

SELECT * FROM Users WHERE Email = 'vamsenik123@example.com';


