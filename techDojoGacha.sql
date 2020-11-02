CREATE DATABASE IF NOT EXISTS techDojoGacha;
USE `techDojoGacha`;

CREATE TABLE IF NOT EXISTS `techDojoGacha`.`user`
(
    `id`           INT AUTO_INCREMENT NOT NULL COMMENT 'id',
    `name`         VARCHAR(255)       NOT NULL COMMENT 'ユーザ名',
    `token`        VARCHAR(255)       NOT NULL COMMENT '認証トークン',
    PRIMARY KEY(`id`)
)
ENGINE = InnoDB
COMMENT = 'ユーザ';
