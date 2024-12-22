-- Create the 'cipher' role if it does not exist
DO
$$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'roleName') THEN
        CREATE ROLE roleName WITH LOGIN;
    END IF;
END
$$;

-- Assign the 'cipher' role privileges to the 'vpn' database
GRANT CONNECT ON DATABASE databaseName TO roleName;
ALTER SCHEMA public OWNER TO roleName;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO roleName;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO roleName;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO roleName;
