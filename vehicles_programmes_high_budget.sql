SELECT v.model, v.registration_number, p.programme_name, b.amount
FROM vehicles v
JOIN programmes p ON v.programme_id = p.programme_id
JOIN budget b ON p.programme_id = b.programme_id
WHERE b.amount > 400000;