--Function use case

--testing the first function

--Testing with valid usedid / Invalid UserId

SELECT GetUserEmail(1) FROM dual;
SELECT GetUserEmail(999) FROM dual; -- Assuming 999 does not exist

