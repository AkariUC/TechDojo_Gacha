# TechDojo_Gacha
- CA Tech Train Mission
## Overview
Go言語を用いてプロダクトのAPIを実装しながら，サーバーサイドの開発の基礎を学ぶ

## Description
### データベース
- データベース
```
CREATE DATABASE IF NOT EXISTS techDojoGacha;
```

- mysqlでユーザを作成，権限
```
create user 'CAMissionGacha'@'localhost' identified by 'pass123';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, PROCESS, REFERENCES, INDEX, ALTER, SHOW DATABASES, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER ON *.* TO 'CAMissionGacha'@'localhost' WITH GRANT OPTION;
```

- テーブル
    - ユーザーテーブル
    ```
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
    ``` 

## Overview
Go言語を用いてプロダクトのAPIを実装しながら，サーバーサイドの開発の基礎を学ぶ

## Description
### データベース
- データベース
```
CREATE DATABASE IF NOT EXISTS techDojoGacha;
```

- mysqlでユーザを作成，権限
```
create user 'CAMissionGacha'@'localhost' identified by 'pass123';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, PROCESS, REFERENCES, INDEX, ALTER, SHOW DATABASES, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER ON *.* TO 'CAMissionGacha'@'localhost' WITH GRANT OPTION;
```

- テーブル
    - ユーザーテーブル
    ```
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
    ``` 

### レイヤードアーキテクチャ
- UI(Presentation)層
    - クライアントのこと
    - APIサーバでは考えない
- Application層
    - Domain層を用いて，クライアントが欲しいデータを返す
- Domain層
    - クライアントからのデータを処理
- Infrastructure層
    - DBとの通信

#### 今回のファイル構造
- 2回目のタイミングであってるか確認お願いする
- cmd
    - api
        - main.go
- domain
    - repository
        - user_repository.go
    - user.go
- config
    - datadase.go
- interfaces
    - handler
        - user.go
    - response
        - responce.go
- infrastructure
    - persistence
        - user.go
- usecase
    - user.go