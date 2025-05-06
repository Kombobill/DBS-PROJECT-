CREATE USER 'report_user'@'localhost' IDENTIFIED BY 'report_password';
GRANT SELECT ON ngo_data.* TO 'report_user'@'localhost'