DROP TABLE IF EXISTS `test_table`;

CREATE TABLE IF NOT EXISTS `test_table` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `created_at` datetime(3) DEFAULT now(3),
  `updated_at` datetime(3) DEFAULT now(3) ON UPDATE now(3),
  PRIMARY KEY(`id`),
  UNIQUE unique_code(code),
  INDEX updated_at(updated_at)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `test_table`
  (name, code)
VALUES
  ('hoge', '123'),
  ('fuga', '456'),
  ('piyo', '789');
