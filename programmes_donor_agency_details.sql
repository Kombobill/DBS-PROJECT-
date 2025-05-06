SELECT p.programme_name, d.donor_name, ia.agency_name, b.amount, b.currency
FROM programmes p
JOIN donor_table d ON p.donor_id = d.donor_id
JOIN implementation_agency ia ON p.agency_id = ia.agency_id
JOIN budget b ON p.programme_id = b.programme_id;