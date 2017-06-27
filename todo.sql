CREATE TABLE todo (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details TEXT NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL);

INSERT INTO todo (title, priority, created_at, completed_at) VALUES ('Have Lunch', 5, '2017-06-27 12:30', '2017-06-27 1:20');
INSERT INTO todo (title, details, priority, created_at, completed_at) VALUES ('finish assessment', 'might as well make a todo for completing this assessment', 4, '2017-06-27 1:24', '2017-06-27 1:50');
INSERT INTO todo (title, details, priority, created_at, completed_at) VALUES ('Create example todos', 'details', 3, '2017-06-27 1:24', '2017-06-27 1:28');
INSERT INTO todo (title, priority, created_at) VALUES ('Get shower', 2, '2017-06-27 1:24');
INSERT INTO todo (title, details, priority, created_at) VALUES ('Pay Bill', 'Pay Suntrust bills', 2, '2017-06-26 8:30 PM');
SELECT * FROM todo WHERE completed_at IS NULL;
SELECT * FROM todo WHERE priority > 1;
UPDATE todo SET completed_at = '2017-06-27 11:00' WHERE id = 5;
DELETE FROM todo WHERE completed_at IS NOT NULL;
