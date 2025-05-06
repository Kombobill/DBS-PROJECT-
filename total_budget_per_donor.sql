SELECT d.donor_name, SUM(b.amount) AS total_budget, b.currency
FROM donor_table d
JOIN programmes p ON d.donor_id = p.donor_id
JOIN budget b ON p.programme_id = b.programme_id
GROUP BY d.donor_name, b.currency;