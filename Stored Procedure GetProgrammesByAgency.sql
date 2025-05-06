DELIMITER //
CREATE PROCEDURE GetProgrammesByAgency (IN agency_name VARCHAR(255))
BEGIN
    SELECT
        p.programme_name,
        d.donor_name,
        a.agency_name
    FROM
        programmes p
    JOIN
        donor_table d ON p.donor_id = d.donor_id
    JOIN
        agency_table a ON p.agency_id = a.agency_id
    WHERE
        a.agency_name = agency_name;
END //
DELIMITER ;