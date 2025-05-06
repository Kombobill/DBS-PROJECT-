-- Security: Roles for Permissions
CREATE ROLE 'data_entry';
GRANT SELECT, INSERT ON ngo_data.programmes TO 'data_entry';

-- Security; Views for Limited Data Access
CREATE VIEW public_programmes AS
SELECT programme_name, description
FROM ngo_data.programmes;

SELECT * FROM public_programmes