--Procedures Testing Usecase

--first procedure

--Create sequence , Create procedure and test below queries

EXECUTE AddNewUser('newUser123', 'newPassword123', 'newUser123@example.com');  -- add new user
EXECUTE AddNewUser('existingUsername', 'password123', 'newEmail@example.com'); -- test with exisiting user and check error

--second procedure

--No sequence is required as we are updating

EXECUTE UpdateUserProfile(1, 'Jane', 'Doe', TO_DATE('1995-02-15', 'YYYY-MM-DD'), 'Canada'); -- update userprofile
EXECUTE UpdateUserProfile(1, 'Jane', 'Doe', '1995-30-02', 'Canada'); --throw invalid data format
EXECUTE UpdateUserProfile(999, 'Test', 'User', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Testland'); --Nonexisiting user ID

--Third Procedure

--No Sequence is required 

EXECUTE ChangeUserPassword(1, 'newSecurePassword123'); --Update new password to user
EXECUTE ChangeUserPassword(999, 'passwordForNonUser'); -- Throw error unknown user

--Fourth Procedure

--Create sequence , Create procedure and test below queries

EXECUTE ProcessWithdrawal(1, 100.00); -- Assuming the user with UserID 1 has sufficient funds and it will update account Balance
EXECUTE ProcessWithdrawal(999, 50.00); -- Throw error account not found

--Fifth Procedure

--Create sequence , create procedure and test below queries

EXECUTE RecordDeposit(1, 500.00); -- Assuming UserID 1 has a wallet and Deposit more
SELECT * FROM Deposits WHERE WalletID = (SELECT WalletID FROM Wallets WHERE UserID = 1); -- to check deposit added to account to user
EXECUTE RecordDeposit(999, 100.00); -- Assuming UserID 999 does not have a wallet and throw error user wallet not found

--Sixth Procedure

EXECUTE RecordUserLogin(1, CURRENT_TIMESTAMP);  --login record
SELECT * FROM UserSessions WHERE UserID = 1; -- show recent login session for user
EXECUTE RecordUserLogin(999, CURRENT_TIMESTAMP); -- throw error









