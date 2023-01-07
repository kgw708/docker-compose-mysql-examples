# mysql-only

## ディレクトリ構成
```
├── mysql
│   └── db
│       ├── data
│       ├── sql
│       │   ├── create_test_table.sql
│       │   └── init_db.sh
│       └── my.cnf
├── docker-compose.yml
└── init_mysql.sh
```

## Dockerコンテナ起動
```
$ docker-compose up -d
```

## Dockerコンテナ起動確認
```
$ docker-compose ps
```

## DB初期化
```
$ ./init_mysql.sh
```

## Dockerコンテナへログイン
```
$ docker-compose exec db /bin/bash
```

## mysql接続
```
$ mysql -u root -p
```

## DB確認
```
# タイムゾーンの確認 -> Asia/Tokyoになっていること
mysql> show variables like '%time_zone%';

# タイムスタンプの確認 -> 日時がJSTであること
mysql> select now();

mysql> show databases;

# 作成したDBをつかう
mysql> use test_database;

mysql> show tables;

mysql> show columns from test_table;

mysql> select * from test_table;

# mysqlから抜ける
mysql> exit
```

## Dockerコンテナからログアウト
```
$ exit
```

## phpmyadminへアクセス
`http://localhost:8000`

## Dockerコンテナの停止と削除
```
$ docker-compose down
```
