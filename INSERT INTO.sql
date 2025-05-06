INSERT INTO donor_table (donor_name, contact_info) VALUES
('Global Fund', 'info@globalfund.org'),
('USAID', 'info@usaid.gov'),
('UNICEF', 'info@unicef.org'),
('World Bank', 'info@worldbank.org'),
('Bill & Melinda Gates Foundation', 'info@gatesfoundation.org'),
('DFID', 'info@dfid.gov.uk'),
('EU', 'info@eu.europa.eu'),
('JICA', 'info@jica.go.jp'),
('DANIDA', 'info@danida.dk'),
('SIDA', 'info@sida.se');

INSERT INTO implementation_agency (agency_name, contact_info) VALUES
('Ministry of Health', '+254712345678, health@gmail.com'),
('Local Council Nairobi', '+254723456789, nairobi.council@gmail.com'),
('Red Cross Kenya', '+254734567890, redcross@gmail.com'),
('CARE Kenya', '+254745678901, care.kenya@gmail.com'),
('ActionAid Kenya', '+254756789012, actionaid@gmail.com'),
('AMREF Kenya', '+254767890123, amref@gmail.com'),
('World Vision Kenya', '+254778901234, worldvision@gmail.com'),
('Plan International Kenya', '+254789012345, plan.kenya@gmail.com'),
('Oxfam Kenya', '+254790123456, oxfam.kenya@gmail.com'),
('Save the Children Kenya', '+254701234567, savethechildren@gmail.com');

INSERT INTO programmes (programme_name, agency_id, donor_id) VALUES
('HIV Prevention', 1, 1),
('Water Sanitation', 2, 2),
('Child Nutrition', 3, 3),
('Infrastructure Development', 4, 4),
('Malaria Control', 5, 5),
('Maternal Health', 6, 6),
('Education Support', 7, 7),
('Youth Empowerment', 8, 8),
('Food Security', 9, 9),
('Emergency Relief', 10, 10);

INSERT INTO budget (programme_id, reference_number, amount, currency, disbursement_date) VALUES
(1, 'GF-2023-001', 500000.00, 'USD', '2023-01-15'),
(2, 'USAID-2023-002', 300000.00, 'EUR', '2023-02-20'),
(3, 'UNICEF-2023-003', 250000.00, 'USD', '2023-03-10'),
(4, 'WB-2023-004', 1000000.00, 'USD', '2023-04-05'),
(5, 'GATES-2023-005', 400000.00, 'USD', '2023-05-20'),
(6, 'DFID-2023-006', 350000.00, 'GBP', '2023-06-15'),
(7, 'EU-2023-007', 550000.00, 'EUR', '2023-07-01'),
(8, 'JICA-2023-008', 300000.00, 'JPY', '2023-08-10'),
(9, 'DANIDA-2023-009', 200000.00, 'DKK', '2023-09-05'),
(10, 'SIDA-2023-010', 280000.00, 'SEK', '2023-10-20');

INSERT INTO employees (full_name, contact_info) VALUES
('John Doe', '+254711111111, john.doe@gmail.com'),
('Jane Smith', '+254722222222, jane.smith@gmail.com'),
('Peter Kimani', '+254733333333, peter.kimani@gmail.com'),
('Mary Wanjiru', '+254744444444, mary.wanjiru@gmail.com'),
('David Omondi', '+254755555555, david.omondi@gmail.com'),
('Sarah Akinyi', '+254766666666, sarah.akinyi@gmail.com'),
('James Mwangi', '+254777777777, james.mwangi@gmail.com'),
('Alice Otieno', '+254788888888, alice.otieno@gmail.com'),
('Samuel Kamau', '+254799999999, samuel.kamau@gmail.com'),
('Grace Njeri', '+254700000000, grace.njeri@gmail.com');

INSERT INTO supervisors (employee_id, programme_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

INSERT INTO vehicles (model, registration_number, programme_id) VALUES
('Toyota Land Cruiser', 'ABC-123', 1),
('Ford Ranger', 'XYZ-789', 2),
('Nissan Patrol', 'DEF-456', 3),
('Land Rover Defender', 'GHI-789', 4),
('Toyota Hilux', 'JKL-012', 5),
('Mitsubishi Pajero', 'MNO-345', 6),
('Isuzu D-Max', 'PQR-678', 7),
('Volkswagen Amarok', 'STU-901', 8),
('Jeep Wrangler', 'VWX-234', 9),
('Mercedes-Benz G-Class', 'YZA-567', 10);

INSERT INTO equipment (name, programme_id) VALUES
('Medical Supplies', 1), ('Water Pumps', 2), ('Nutritional Supplements', 3),
('Construction Tools', 4), ('Mosquito Nets', 5), ('Maternal Kits', 6),
('Textbooks', 7), ('Computers', 8), ('Food Rations', 9),
('Tents', 10);

INSERT INTO progress_reports (programme_id, submitted_to, submission_date, summary) VALUES
(1, 'Donor', '2023-03-01', 'Progress report for HIV Prevention project.'),
(2, 'Agency', '2023-03-15', 'Progress report for Water Sanitation project.'),
(3, 'Donor', '2023-04-01', 'Progress report for Child Nutrition project.'),
(4, 'Agency', '2023-04-15', 'Progress report for Infrastructure Development project.'),
(5, 'Donor', '2023-05-01', 'Progress report for Malaria Control project.'),
(6, 'Agency', '2023-05-15', 'Progress report for Maternal Health project.'),
(7, 'Donor', '2023-06-01', 'Progress report for Education Support project.'),
(8, 'Agency', '2023-06-15', 'Progress report for Youth Empowerment project.'),
(9, 'Donor', '2023-07-01', 'Progress report for Food Security project.'),
(10, 'Agency', '2023-07-15', 'Progress report for Emergency Relief project.');