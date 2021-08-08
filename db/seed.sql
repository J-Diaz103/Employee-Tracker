use employees;

INSERT INTO department
    (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 150000, 1),
    ('Salesperson', 75000, 1),
    ('Lead Engineer', 200000, 2),
    ('Software Engineer', 115000, 2),
    ('Account Manager', 130000, 3),
    ('Accountant', 120000, 3),
    ('Legal Team Lead', 300000, 4),
    ('Lawyer', 200000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Sergio', 'Melendez', 1, NULL),
    ('Mamu', 'Kimura', 2, 1),
    ('Bryan', 'Astro', 3, NULL),
    ('Carlos', 'August', 4, 3),
    ('Juan', 'Rodriguez', 5, NULL),
    ('Faye', 'Marquez', 6, 5),
    ('Gaby', 'Diaz', 7, NULL),
    ('Joe', 'Martinez', 8, 7);
