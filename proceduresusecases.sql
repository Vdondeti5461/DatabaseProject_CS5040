--Procedures Testing Usecase

--first procedure

--Create sequence , Create procedure and test below queries

EXECUTE AddNewUser('newUser123', 'newPassword123', 'newUser123@example.com');  -- add new user
EXECUTE AddNewUser('existingUsername', 'password123', 'newEmail@example.com'); -- test with exisiting user and check error



