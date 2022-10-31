USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('NULL');

INSERT INTO users (name, email, role_id)
VALUES ('cristian', 'cristian@example.com', 2),
       ('cody', 'cody@example.com', 2),
       ('corey', 'corey@example.com', 2),
       ('justin', 'justin@example.com', NULL);
