--Procedures Testing Usecase
--first procedure

--Create sequence , Create procedure and test below queries
-- add new user
EXECUTE AddNewUser('newUser123', 'newPassword123', 'newUser123@example.com'); 
-- test with exisiting user and check error
EXECUTE AddNewUser('existingUsername', 'password123', 'newEmail@example.com'); 

--second procedure
--No sequence is required as we are updating

-- update userprofile
EXECUTE UpdateUserProfile(1, 'Jane', 'Doe', TO_DATE('1995-02-15', 'YYYY-MM-DD'), 'Canada'); 
--throw invalid data format
EXECUTE UpdateUserProfile(1, 'Jane', 'Doe', '1995-30-02', 'Canada'); 
 --Nonexisiting user ID
EXECUTE UpdateUserProfile(999, 'Test', 'User', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Testland');

--Third Procedure
--No Sequence is required 

--Update new password to user
EXECUTE ChangeUserPassword(1, 'newSecurePassword123'); 
 -- Throw error unknown user
EXECUTE ChangeUserPassword(999, 'passwordForNonUser');

--Fourth Procedure
--Create sequence , Create procedure and test below queries

-- Assuming the user with UserID 1 has sufficient funds and it will update account Balance
EXECUTE ProcessWithdrawal(1, 100.00); \
-- Throw error account not found
EXECUTE ProcessWithdrawal(999, 50.00); 

--Fifth Procedure
--Create sequence , create procedure and test below queries

-- Assuming UserID 1 has a wallet and Deposit more
EXECUTE RecordDeposit(1, 500.00); 
-- to check deposit added to account to user
SELECT * FROM Deposits WHERE WalletID = (SELECT WalletID FROM Wallets WHERE UserID = 1); 
-- Assuming UserID 999 does not have a wallet and throw error user wallet not found
EXECUTE RecordDeposit(999, 100.00); 

--Sixth Procedure

--login record
EXECUTE RecordUserLogin(1, CURRENT_TIMESTAMP);  
-- show recent login session for user
SELECT * FROM UserSessions WHERE UserID = 1;
-- throw error
EXECUTE RecordUserLogin(999, CURRENT_TIMESTAMP); 









