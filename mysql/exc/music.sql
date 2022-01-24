CREATE TABLE IF NOT EXISTS `music` (
  `seq` INT NOT NULL,
  `top_name` VARCHAR(45) NULL,
  `space_type` VARCHAR(45) NULL,
  `time` VARCHAR(45) NULL,
  `people` VARCHAR(45) NULL,
  `desk` INT NULL COMMENT '1 - 있음\n2 - 없음\n',
  `mirror` INT NULL COMMENT '1 - 있음\n2 - 없음',
  `rest_room` INT NULL COMMENT '1 - 있음\n2 - 없음',
  `smoking` INT NULL COMMENT '1 - 가능\n2 - 불가능',
  `lounge` INT NULL COMMENT '1 - 있음\n2 - 없음\n',
  `shower` INT NULL COMMENT '1 - 있음\n2 - 없음',
  `wifi` INT NULL COMMENT '1 - 가능\n2 - 불가능',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '연습실'