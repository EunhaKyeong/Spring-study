USE springstudy;

DROP FUNCTION IF EXISTS `get_code`;

DELIMITER $$
CREATE FUNCTION `get_code`(p_seq_name VARCHAR(4)) RETURNS VARCHAR(8)
BEGIN
	DECLARE no INT;
	DECLARE code VARCHAR(8);
    
	UPDATE tb_sequence SET seq_no=seq_no+1 WHERE seq_name=p_seq_name;
    SELECT seq_no INTO no FROM tb_sequence WHERE seq_name=p_seq_name;
	SELECT CONCAT(p_seq_name, LPAD(no, 4, '0')) INTO code FROM dual;
    
    RETURN code;
END $$
DELIMITER ;
