INSERT INTO users (id, username, password, active)
VALUES (1, 'admin', 'admin', true);

INSERT INTO user_roles (user_id, role)
VALUES  (1, 'ADMIN'),
        (1, 'USER');