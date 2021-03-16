CREATE DATABASE springstudy;

USE springstudy;

CREATE TABLE tbl_board (
	bno VARCHAR(9) NOT NULL PRIMARY KEY, 
    title VARCHAR(30) NOT NULL, 
    content VARCHAR(200), 
    writer VARCHAR(15) NOT NULL);
    
ALTER TABLE tbl_board MODIFY COLUMN title VARCHAR(50);
ALTER TABLE tbl_board ADD COLUMN regDate DATETIME DEFAULT NOW();
ALTER TABLE tbl_board ADD COLUMN updateDate DATETIME DEFAULT NOW();
ALTER TABLE tbl_board MODIFY COLUMN regDate DATETIME NOT NULL DEFAULT NOW();
ALTER TABLE tbl_board MODIFY COLUMN updateDate DATETIME NOT NULL DEFAULT NOW();
    
INSERT INTO tbl_board(bno, title, content, writer)
		VALUES (`get_code`('bord'), '달러구트 꿈 백화점', '주문하신 꿈은 매진입니다', '이미예'),
				(`get_code`('bord'), '주린이가 가장 알고 싶은 최다질문 TOP 77', '염블리 염승환과 함께라면 주식이 쉽고 재미있다', '염승환'),
                (`get_code`('bord'), '나의 첫 투자 수업. 1: 마인드편(슈퍼개미 김정환에게 배우는)', '', '김정환'), 
                (`get_code`('bord'), '2030 축의 전환', '새로운 부와 힘을 탄생시킬 8가지 거대한 물결', '마우로 기옌'), 
                (`get_code`('bord'), '공정하다는 착각', '능력주의는 모두에게 같은 기회를 제공하는가', '마이클 샌델'), 
                (`get_code`('bord'), '아몬드(양장본 HardCover)', '손원평 장편소설', '손원평'), 
                (`get_code`('bord'), '모래알만 한 진실이라도(양장본 HardCover)', '박완서 에세이', '박완서'), 
                (`get_code`('bord'), '해커스 토익 기출 보카 TOEIC VOCA(개정판 5판)', '주제별 연상암기로 토익 영단어 30일 완성!', 'David Cho'), 
                (`get_code`('bord'), '빌 게이츠, 기후 재앙을 피하는 법', '우리가 가진 솔루션과 우리에게 필요한 돌파구', '빌 게이츠'), 
                (`get_code`('bord'), '파친코. 1', '이민진 장편소설', '이민진'),
                (`get_code`('bord'), '마지막 몰입: 나를 넘어서는 힘', '내 안의 잠재력을 200% 끌어올리는 마인드셋', '짐 퀵'),
                (`get_code`('bord'), '어떻게 말해줘야 할까', '오은영의 현실밀착 육아회화', '오은영'),
                (`get_code`('bord'), '흔한남매 불꽃 튀는 우리말. 1(양장본 HardCover)', '초등 국어 고수 되기 프로젝트', '흔한남매 (원작)'),
                (`get_code`('bord'), '좋은 사람에게만 좋은 사람이면 돼(봄 에디션)', '지금은 나를 돌보는 시간, 내 마음대로 행복해지기', '김재식'),
                (`get_code`('bord'), '주식투자 무작정 따라하기(2020)(개정판)', '100만 왕초보가 감동한 최고의 주식투자 입문서', '윤재수'),
                (`get_code`('bord'), '돈의 심리학(양장본 HardCover)', '당신은 왜 부자가 되지 못했는가', '모건 하우절'),
                (`get_code`('bord'), '미라클모닝', '당신의 하루를 바꾸는 기적 아침 6분이면 충분하다', '할 엘로드'),
                (`get_code`('bord'), '돈의 속성(100쇄 기념 에디션)', '최상위 부자가 말하는 돈에 대한 모든 것', '김승호');
                
UPDATE tbl_board SET regDate=NOW(), updateDATE=NOW();

SELECT * FROM tbl_board;
                
                