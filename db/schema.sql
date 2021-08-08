DROP DATABASE IF EXISTS employee_trackerDB;
CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

CREATE TABLE department(
    id INT USIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
    PRIMARY KEY (id)
):

CREATE TABLE role(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL default 0,
    department_id INT UNSIGNED NOT NULL,
    INDEX dept_ind (department_id),
    FOREIGN KEY ( department_id),
    CONSTRAINT fk_department REFERENCES department(id) ON DELETE CASCADE 
);

CREATE TABLE employee(
    id INT PRIMARY KEY,
    first_name VARCHAR(30) INT NOT NULL,
    last_name VARCHAR(30) INT NOT NULL,
    role_id INT USIGNED NOT NULL, 
    INDEX role_ind(role_id),
    FOREIGN KEY (role_id),
    REFERENCES role(id) ON DELETE CASCADE,
    manager_id INT UNSIGNED ,
    INDEX man_ind (manager_id),
    FOREIGN KEY(manager_id) REFERENCES employee(id) ON DELETE SET NULL
);