--first index usecase

SELECT * FROM Transactions WHERE Timestamp BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD') AND TO_DATE('2023-01-31', 'YYYY-MM-DD');

--second index Usecase

SELECT * FROM Users WHERE Username = 'specificUsername';

--Third index Usecase
SELECT * FROM Users WHERE Email = 'vampe@example.com';


