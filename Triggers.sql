-- triggers

--First trigger
-- Ensure to create sequences before creating trigger . Need two sequences to test this trigger
--1 CREATE SEQUENCE SessionID_SEQ START WITH 16 INCREMENT BY 1 NOMAXVALUE;
--2 CREATE SEQUENCE LogID_SEQ START WITH 1 INCREMENT BY 1 NOMAXVALUE;

--Trigger LogUserLogin

CREATE OR REPLACE TRIGGER LogUserLogin
AFTER INSERT ON UserSessions
FOR EACH ROW
BEGIN
  INSERT INTO Logs (LogID, UserID, Action, Timestamp)
  VALUES (LogID_SEQ.NEXTVAL, :NEW.UserID, 'User logged in', SYSDATE);
END;
/
