CREATE TABLE adLister_users(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(50),
    password VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE ads(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50),
    description VARCHAR(100),
    user_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

alter table ymir_andrea.ads
    add constraint FK_user_id
        foreign key (user_id) references ymir_andrea.adLister_users (id);

CREATE TABLE category(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE ads_cat(
    ads_id INT NOT NULL,
    cat_id INT NOT NULL,
    FOREIGN KEY (ads_id) REFERENCES ads(id),
    FOREIGN KEY (cat_id) REFERENCES categories(id)
);

SELECT *
FROM adLister_users AS u
    INNER JOIN ads AS a ON a.id = u.id
    INNER JOIN ad_category AS ac ON ac.ads_id = a.id
    INNER JOIN categories AS c on c.id = ac.cat_id;

SELECT a.title, a.description AS ad_description, u.email
FROM adLister_users AS u
    INNER JOIN ads AS a ON a.user_id = u.id
WHERE a.id =1;

SELECT c.name
FROM categories AS c
    INNER JOIN ad_category AS ac ON ac.cat_id = c.id
WHERE ac.ads_id = 1;

SELECT c.name, a.title, a.description
FROM ads AS a
    INNER JOIN ad_category ac on a.id = ac.ads_id
    INNER JOIN categories c on ac.cat_id = c.id
WHERE c.name = 'for sale';

SELECT u.id, u.email, a.title, a.description
FROM ads AS a
    INNER JOIN adLister_users AS u ON u.id = a.user_id
WHERE u.email = 'andrea@gmail.com';
