CREATE TABLE IF NOT EXISTS `music` (
  `seq` INT NOT NULL,
  `music_img` VARCHAR(45) NULL,
  `top_name` VARCHAR(45) NULL,
  `space_type` VARCHAR(45) NULL,
  `ttime` VARCHAR(45) NULL,
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
COMMENT = '연습실';

insert into music (
	seq
    ,top_name
    ,space_type
    ,ttime
    ,people
    ,desk
    ,mirror
    ,rest_room
    ,smoking
    ,lounge
    ,shower
    ,wifi
) value (
	1
    ,'레슨 성악 보컬 피아노 등 원하는 음악을 할수 있는 지상 연습실'
    ,'악기연습실'
    ,'최소 1시간부터'
    ,'최소 1명 ~ 최대 4명'
    ,5
    ,1
    ,1
    ,1
    ,1
    ,1
    ,1
);

select * from music;
