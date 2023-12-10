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





