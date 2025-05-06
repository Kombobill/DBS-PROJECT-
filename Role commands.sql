CREATE VIEW programme_budgets AS
SELECT p.programme_name, b.amount, b.currency
FROM programmes p
JOIN budget b ON p.programme_id = b.programme_id;

GRANT SELECT ON ngo_data.programme_budgets TO 'report_user'@'localhost';