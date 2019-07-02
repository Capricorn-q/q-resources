CREATE external TABLE if not exists `test_user`
(
    `id`   string,
    `name` string,
    `age`  int,
    `sex`  string
)
    ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'
    STORED AS ORC
    LOCATION
        'hdfs://127.0.0.1:9000/user/hive/warehouse/test_user.db';
--     TBLPROPERTIES ("orc.compress" = "SNAPPY");