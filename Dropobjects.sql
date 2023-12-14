BEGIN
    -- Dropping Procedures
    FOR r IN (SELECT object_name FROM user_procedures WHERE object_type = 'PROCEDURE') LOOP
        EXECUTE IMMEDIATE 'DROP PROCEDURE ' || r.object_name;
    END LOOP;

    -- Dropping Functions
    FOR r IN (SELECT object_name FROM user_procedures WHERE object_type = 'FUNCTION') LOOP
        EXECUTE IMMEDIATE 'DROP FUNCTION ' || r.object_name;
    END LOOP;

    -- Dropping Packages
    FOR r IN (SELECT object_name FROM user_objects WHERE object_type = 'PACKAGE') LOOP
        EXECUTE IMMEDIATE 'DROP PACKAGE ' || r.object_name;
    END LOOP;

    -- Dropping Triggers
    FOR r IN (SELECT trigger_name FROM user_triggers) LOOP
        EXECUTE IMMEDIATE 'DROP TRIGGER ' || r.trigger_name;
    END LOOP;

    -- Dropping Sequences
    FOR r IN (SELECT sequence_name FROM user_sequences) LOOP
        EXECUTE IMMEDIATE 'DROP SEQUENCE ' || r.sequence_name;
    END LOOP;

    -- Dropping Indexes
    FOR r IN (SELECT index_name FROM user_indexes) LOOP
        EXECUTE IMMEDIATE 'DROP INDEX ' || r.index_name;
    END LOOP;

    -- Dropping Tables
    FOR r IN (SELECT table_name FROM user_tables) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || r.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/
