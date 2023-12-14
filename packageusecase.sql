--create sequence CREATE SEQUENCE UserID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE; create sequence if not available

--first test case AddNewUser

BEGIN
    UserManagement.AddNewUser('uniqueUsernameTest', 'passwordTest', 'uniqueEmailTest@example.com');
END;
/


--second Updateuserprofile
  
BEGIN
    UserManagement.UpdateUserProfile(1, 'FirstName', 'LastName', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Country');
END;
/

--third changeuserpassword

BEGIN
    UserManagement.ChangeUserPassword(1, 'newPassword');
END;
/

--Fourth GetUseremail

DECLARE
    v_Email VARCHAR2(255);
BEGIN
    v_Email := UserManagement.GetUserEmail(1); -- Use a valid UserID
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_Email);
END;
/

--Second package Testing use cases

--create sequence as mentioned in package file

--Usecase ProcessWithdrawal:
    
BEGIN
    FinancialOperations.ProcessWithdrawal(1, 500);
END;
/

--Usecase RecordDeposit:

BEGIN
    FinancialOperations.RecordDeposit(1, 10000);
END;
/




