SELECT p.programme_name, e.name AS equipment_name, pr.summary AS progress_report
FROM programmes p
LEFT JOIN equipment e ON p.programme_id = e.programme_id
LEFT JOIN progress_reports pr ON p.programme_id = pr.programme_id;