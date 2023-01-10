# mysql-with-flyway

## description

docker-compose で mysql の環境を構築します。  
flyway を用いてDDL/DMLの構成管理を行います。  

## ディレクトリ構成
```
├── flyway
│   ├── conf
│   │   └── flyway.conf
│   └── sql
│       └── ***.sql（DDLやDMLなど）
├── mysql
│   └── db
│       ├── data
│       └── my.cnf
└── docker-compose.yml
```

## usage

### Dockerコンテナ起動
```
$ docker-compose up -d db
```

### Dockerコンテナ一覧表示（起動確認）
```
$ docker-compose ps
```

### flyway-migrateによるテーブル作成/データ投入
```
$ docker-compose run --rm flyway-migrate
```

### flyway-infoによるテーブル作成履歴の表示
```
$ docker-compose run --rm flyway-info
```

### flyway-cleanによるテーブル全削除
```
$ docker-compose run --rm flyway-clean
```

### Dockerコンテナの停止
```
$ docker-compose stop
```

### Dockerコンテナの削除
```
$ docker-compose down
```
