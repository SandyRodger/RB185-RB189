CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric(6,2) NOT NULL,
  memo text NOT NULL,
  created_on date NOT NULL
);

-- practice problem 1

INSERT INTO expenses(amount, memo, created_on) VALUES
(9999.99, 'this is the largest possible value', '2023-11-29');

INSERT INTO expenses(amount, memo, created_on) VALUES
(10000.00, 'this is too large', '2023-11-29');

-- practice problem 2

INSERT INTO expenses(amount, memo, created_on) VALUES
(-9999.99, 'this is the smallest possible value', '2023-11-29');

INSERT INTO expenses(amount, memo, created_on) VALUES
(-10000.00, 'this value''s too small', '2023-11-29');

-- practice problem 3

DELETE FROM expenses WHERE amount < 0;
ALTER TABLE expenses ADD CONSTRAINT amount_positive_value CHECK (amount BETWEEN 0 AND 9999.99);
ALTER TABLE expenses ADD CONSTRAINT positive_amount CHECK (amount >= 0.01);
