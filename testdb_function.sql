CREATE DEFINER=`mydeal`@`%` FUNCTION `f_rand1`(_str varchar(255)) RETURNS varchar(31) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
BEGIN
  declare v_ret varchar(31);
  declare v_len tinyint;
  
  set v_len = char_length(_str);
  set v_ret = substring(_str, CEIL(rand() * v_len), 1);
f_rand1f_randname
RETURN v_ret;
END