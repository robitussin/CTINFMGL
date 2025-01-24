-- disables auto save feature
SET AUTOCOMMIT = OFF;

-- manually save changes
COMMIT;

DELETE FROM employees;

-- undo changes made previously
ROLLBACK;

DELETE FROM employees;

COMMIT;



