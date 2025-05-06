CREATE DATABASE ngo_data;
USE ngo_data;

CREATE TABLE donor_table (
    donor_id INT PRIMARY KEY AUTO_INCREMENT,
    donor_name VARCHAR(255),
    contact_info VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE implementation_agency (
    agency_id INT PRIMARY KEY AUTO_INCREMENT,
    agency_name VARCHAR(255),
    contact_info VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE programmes (
    programme_id INT PRIMARY KEY AUTO_INCREMENT,
    programme_name VARCHAR(255),
    agency_id INT,
    donor_id INT,
    FOREIGN KEY (agency_id) REFERENCES implementation_agency(agency_id),
    FOREIGN KEY (donor_id) REFERENCES donor_table(donor_id),
    INDEX (agency_id),
    INDEX (donor_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE budget (
    budget_id INT PRIMARY KEY AUTO_INCREMENT,
    programme_id INT,
    reference_number VARCHAR(255),
    amount DECIMAL(10, 2),
    currency VARCHAR(50),
    disbursement_date DATE,
    FOREIGN KEY (programme_id) REFERENCES programmes(programme_id),
    INDEX (programme_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255),
    contact_info VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE supervisors (
    supervisor_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    programme_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (programme_id) REFERENCES programmes(programme_id),
    INDEX (employee_id),
    INDEX (programme_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(255),
    registration_number VARCHAR(50),
    programme_id INT,
    FOREIGN KEY (programme_id) REFERENCES programmes(programme_id),
    INDEX (programme_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE equipment (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    programme_id INT,
    FOREIGN KEY (programme_id) REFERENCES programmes(programme_id),
    INDEX (programme_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE progress_reports (
    report_id INT PRIMARY KEY AUTO_INCREMENT,
    programme_id INT,
    submitted_to VARCHAR(255),
    submission_date DATE,
    summary TEXT,
    FOREIGN KEY (programme_id) REFERENCES programmes(programme_id),
    INDEX (programme_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;