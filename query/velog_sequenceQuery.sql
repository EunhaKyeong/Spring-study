use test;
CREATE TABLE tbl_category (
	category_id INT PRIMARY KEY AUTO_INCREMENT, 
    category_name VARCHAR(20)
);

INSERT INTO tbl_category(category_name) VALUES ('clothes');
INSERT INTO tbl_category(category_name) VALUES ('food');

INSERT INTO tbl_category(category_name) VALUES 
	('home appliances'), 
    ('office appliances');
    
SELECT * FROM tbl_category;
SELECT LAST_INSERT_Id();

CREATE TABLE tbl_user (
	user_id VARCHAR(8) PRIMARY KEY, 
    user_name VARCHAR(20) NOT NULL, 
    create_date DATETIME NOT NULL DEFAULT NOW());
    
CREATE TABLE tbl_sequence (
	sequence_name VARCHAR(4) PRIMARY KEY, 
    last_no INT NOT NULL DEFAULT 0);
    
INSERT INTO tbl_sequence(sequence_name) VALUES ('user');
SELECT * FROM tbl_sequence;

DROP FUNCTION IF EXISTS get_sequence;

DELIMITER $$
CREATE FUNCTION get_sequence(p_sequence_name VARCHAR(4)) RETURNS VARCHAR(8)
BEGIN
	DECLARE r_last_no INT;
	DECLARE r_sequence VARCHAR(8);
    
    UPDATE tbl_sequence SET last_no=last_no+1 WHERE sequence_name=p_sequence_name;
    SELECT last_no INTO r_last_no FROM tbl_sequence WHERE sequence_name=p_sequence_name;
    
    SELECT CONCAT(p_sequence_name, LPAD(r_last_no, 4, '0')) INTO r_sequence;
    RETURN r_sequence;
END $$
DELIMITER ;

INSERT INTO tbl_user(user_id, user_name) VALUES (get_sequence('user'), '김철수');
SELECT * FROM tbl_user;

INSERT INTO tbl_user(user_id, user_name) VALUES 
	(get_sequence('user'), '김순이'), 
    (get_sequence('user'), '장선장'), 
    (get_sequence('user'), '강꽃님');
SELECT * FROM tbl_user;
    