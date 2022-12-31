DROP TABLE IF EXISTS `food`;
DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `bbs`;

CREATE TABLE `food`(
    `addr` varchar(255) DEFAULT NULL,
    `name` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,
    `stock` varchar(255) DEFAULT NULL,
PRIMARY KEY (`name`)
);

CREATE TABLE `bbs`(
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) DEFAULT NULL,
    `body` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,
    `time` varchar(255) DEFAULT NULL,
PRIMARY KEY (`id`)
);

create table users(
      username varchar_ignorecase(50) not null primary key,
      password varchar_ignorecase(500) not null,
      enabled boolean not null
);
create table authorities (
     `id` bigint(20) NOT NULL AUTO_INCREMENT,
     username varchar_ignorecase(50) not null,
     authority varchar_ignorecase(50) not null,
     PRIMARY KEY (`id`),
     constraint fk_authorities_users foreign key(username)
         references users(username)
);