-- First, create a log table to store the budget changes
CREATE TABLE budget_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    programme_id INT,
    old_budget DECIMAL(10, 2),
    new_budget DECIMAL(10, 2),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (programme_id) REFERENCES programmes(programme_id)
);

-- Now, create the trigger that runs AFTER an UPDATE on the budget table
DELIMITER //
CREATE TRIGGER budget_changes
AFTER UPDATE ON budget
FOR EACH ROW
BEGIN
    IF OLD.amount <> NEW.amount THEN
        INSERT INTO budget_log (programme_id, old_budget, new_budget)
        VALUES (NEW.programme_id, OLD.amount, NEW.amount);
    END IF;
END;
//
DELIMITER ;