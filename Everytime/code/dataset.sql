
create database everytime;

use everytime;

create table bbs (bbs_id int, 
bbs_name varchar(18),
primary key (bbs_id));
INSERT INTO bbs (bbs_id, bbs_name) values (1, '내가 쓴 글');
INSERT INTO bbs (bbs_id, bbs_name) values (2, '댓글 단 글');
INSERT INTO bbs (bbs_id, bbs_name) values (3, '스크랩');
INSERT INTO bbs (bbs_id, bbs_name) values (4, 'HOT 게시판');
INSERT INTO bbs (bbs_id, bbs_name) values (5, 'BEST 게시판');
INSERT INTO bbs (bbs_id, bbs_name) values (6, '자유게시판');
INSERT INTO bbs (bbs_id, bbs_name) values (7, '비밀게시판');
INSERT INTO bbs (bbs_id, bbs_name) values (8, 'AI∙소프트웨어학과 정보공유');
INSERT INTO bbs (bbs_id, bbs_name) values (9, '새내기게시판');
INSERT INTO bbs (bbs_id, bbs_name) values (10, '정보게시판');
INSERT INTO bbs (bbs_id, bbs_name) values (11, '장터게시판');

create table user_fixed_bbs (i_user int,
bbs_id int, fix int, update_time DATETIME);
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (1, 8, 0, '2023-10-30 09:00:30');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (7, 6, 1, '2023-10-30 09:01:25');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (1, 7, 1, '2023-10-30 09:11:25');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (1, 8, 1, '2023-10-30 09:20:15');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (2, 8, 1, '2023-10-30 09:30:11');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (1, 6, 1, '2023-10-30 09:31:15');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (2, 8, 0, '2023-10-30 09:33:50');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (3, 6, 1, '2023-10-30 10:01:50');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (3, 9, 1, '2023-10-30 10:35:55');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (3, 7, 0, '2023-10-30 11:10:05');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (4, 7, 1, '2023-10-30 11:44:50');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (5, 10, 1, '2023-10-30 11:55:49');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (11, 6, 1, '2023-10-30 11:55:50');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (14, 7, 0, '2023-10-30 11:55:51');
INSERT INTO user_fixed_bbs (i_user, bbs_id, fix, update_time) values (15, 6, 1, '2023-10-30 11:55:52');

create table contents(
contents_id int primary key auto_increment,
bbs_id int,
bbs_title varchar(40),
bbs_content varchar(2048),
bbs_date datetime,
nickname varchar(20),
bbs_likes int,
bbs_stars int,
bbs_comments int,
i_user int,
bbs_available boolean default 1
);
INSERT INTO contents VALUES(NULL, 8, '캬 형 랩 미쳣다 ㅋㅋㅋㅋ', 'ㅋㅋㅋㅋㄲ', '2024-11-20 13:45', '익명', 24, 1, 16, 12, 1);
INSERT INTO contents VALUES(NULL, 8, '앵 콜', '앵 콜', '2024-11-20 13:47', '익명', 2, 0, 7, 12, 1);
INSERT INTO contents VALUES(NULL, 8, '드론 픽앤플레이스 잘 되나요?', '하ㅋㅋㅋㅋㅋ', '2024-11-20 16:44', '익명', 0, 0, 1, 11, 0);
INSERT INTO contents VALUES(NULL, 8, '컴네 ta 미팅', '몇 분 정도 하나요?', '2024-11-20 20:13', '익명', 0, 0, 5, 10, 1);
INSERT INTO contents VALUES(NULL, 8, '2학년인데 팀플때문에 죽겠어요', '데베 알고리즘 네트워크 무슨 팀플 3개를 한번에,,, 근데 기말 공부도 해야 해... 랩테도 준비해야 해... 이걸 다들 어떻게 하고 계신겁니까,,, 하루가 너무 부족해요.. 실력도 없는 것 같고 팀원들에게 폐끼치는 거 아닌가 속상해요 .. 제가 너무 작아진 것 같아요 ㅠㅠㅠ', '2024-11-20 21:12', '익명', 6, 1, 13, 10, 1);
INSERT INTO contents VALUES(NULL, 8, '미스터 로봇 개꿀잼', '꼭봐라', '2024-11-20 21:57', '익명', 0, 0, 0, 7, 1);
INSERT INTO contents VALUES(NULL, 8, '취창업 과제', '취창업 발표영상 올리는 과제 필수 아닌 거 맞나요?', '2024-11-20 21:57', '익명', 0, 0, 0, 8, 1);
INSERT INTO contents VALUES(NULL, 8, '내일 드론 수업 때 완성 못 하면', '어떡하지...', '2024-11-20 23:07', '익명', 0, 0, 0, 6, 1);
INSERT INTO contents VALUES(NULL, 8, '다죽자', '다죽자~~~ 일단 난 죽겠음', '2024-11-21 00:14', '익명', 0, 0, 1, 5, 1);
INSERT INTO contents VALUES(NULL, 8, '안녕하세요 내년에 소웨 2학년 군복학생입니다', '하고싶은 프로젝트하면서 프레임워크 다뤄보면서 이것저것 하고있는데요, 하면서 느끼는게 전공지식이 진짜 중요하겠구나 입니다...혹시 2 3학년때 배우는 중요한 cs지식들 다 c기반으로 할까요...! 핑프라 죄송함돠!!!!', '2024-11-21 02:25', '익명', 0, 0, 7, 4, 1);
INSERT INTO contents VALUES(NULL, 12, 'ㅇㅅㅎ 웹db', '전범위인지 중간 이후부터인지 아는사람...', '2024-11-21 03:07', '익명', 0, 0, 0, 18, 1);
INSERT INTO contents VALUES(NULL, 12, 'ㅅㅅㅈ 자바 과제', '이거 jsp파일들이 어느디렉토리에 있는거야?', '2024-11-21 09:13', '익명', 0, 0, 0, 17, 1);
INSERT INTO contents VALUES(NULL, 12, '코딩애플 유료수강 해보신분들 계신가요', '어떤가요 후기 알려주세요!', '2024-11-21 09:34', '익명', 0, 0, 3, 16, 1);
INSERT INTO contents VALUES(NULL, 8, '컴구 점수 떴다 rr', '분포 레전드 ㅋㅋ', '2024-11-21 13:36', '익명', 0, 0, 4, 3, 1);
INSERT INTO contents VALUES(NULL, 8, '알고 점수떴네', '다들 잘봄?? 평균 몇이려나', '2024-11-21 17:31', '익명', 0, 0, 0, 2, 1);
INSERT INTO contents VALUES(NULL, 12, 'ㅇㅂㅎ 구현 다 못한사람있음?', '??', '2024-11-21 17:59', '익명', 0, 0, 5, 15, 1);
INSERT INTO contents VALUES(NULL, 8, '슬슬', '다들 연구실 알아보는거 같은데.. 나도 알아봐야겠다', '2024-11-21 20:50', '익명', 0, 0, 7, 1, 1);
INSERT INTO contents VALUES(NULL, 12, '카엔프', '방학에 기업나가서 실습하는거 필수인가요 선배님들', '2024-11-21 20:51', '익명', 0, 0, 1, 14, 1);
INSERT INTO contents VALUES(NULL, 12, 'p프', '다음주부터 시작인데 논술보는데 아무런 공지가없네ㅜ', '2024-11-22 00:52', '익명', 0, 0, 0, 13, 1);
INSERT INTO contents VALUES(NULL, 6, '대학원 권유', '어떤식으로 받음? 교수님하고 부딪힐 일이 있나? 그냥 수업하고 땡 수업하고 땡 시험보고 땡 이런식인데? 시험을 잘봐서 제안이 오는거야?', '2024-11-22 19:22', '자몽', 0, 0, 0, 19, 1);

CREATE TABLE Course (
    course_id VARCHAR(20) PRIMARY KEY,
    course_name VARCHAR(100),
    professor_name VARCHAR(100),
    textbook_info TEXT,
    exam_info TEXT
);
INSERT INTO Course (course_id, course_name, professor_name, textbook_info, exam_info) VALUES ('DB101', '데이터베이스 및 실습', '조풍진 교수님', '데이터베이스 시스템, 5판 (이성환 역)', '기말고사: ER 모델링 및 SQL 실습');

CREATE TABLE CourseEvaluation (
    evaluation_id INT PRIMARY KEY,
    course_id VARCHAR(20),
    evaluator_id INT,
    semester VARCHAR(20),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    content TEXT,
    recommend_count INT,  -- 추천 수
    not_recommend_count INT,  -- 비추천 수
    assignment_amount ENUM('많음', '보통', '없음'),  -- 과제 양
    group_meeting_frequency ENUM('많음', '보통', '없음'),  -- 조모임 빈도
    grading_flexibility ENUM('너그러움', '보통', '없음'),  -- 성적 기준
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
INSERT INTO CourseEvaluation (evaluation_id, course_id, evaluator_id, semester, rating, content, recommend_count, not_recommend_count, assignment_amount, group_meeting_frequency, grading_flexibility) 
VALUES (1, '14466_006', 202201, '2022-1학기', 5, '체계적이고 실습 중심의 강의로 실무에서 유익했습니다.', 15, 1, '많음', '보통', '너그러움');

INSERT INTO CourseEvaluation (evaluation_id, course_id, evaluator_id, semester, rating, content, recommend_count, not_recommend_count, assignment_amount, group_meeting_frequency, grading_flexibility) 
VALUES (2, '14466_006', 202202, '2022-2학기', 4, '과제가 많았지만 실무에 큰 도움이 되었습니다.', 10, 2, '많음', '보통', '보통');

INSERT INTO CourseEvaluation (evaluation_id, course_id, evaluator_id, semester, rating, content, recommend_count, not_recommend_count, assignment_amount, group_meeting_frequency, grading_flexibility) 
VALUES (3, '14466_006', 202301, '2023-1학기', 5, 'SQL과 ERD 모델링의 중요성을 알 수 있었습니다.', 12, 0, '보통', '많음', '너그러움');

INSERT INTO CourseEvaluation (evaluation_id, course_id, evaluator_id, semester, rating, content, recommend_count, not_recommend_count, assignment_amount, group_meeting_frequency, grading_flexibility) 
VALUES (4, '14466_006', 202302, '2023-2학기', 3, '수업 내용은 좋았지만 과제 난이도가 너무 높았습니다.', 8, 3, '많음', '적음', '보통');

INSERT INTO CourseEvaluation (evaluation_id, course_id, evaluator_id, semester, rating, content, recommend_count, not_recommend_count, assignment_amount, group_meeting_frequency, grading_flexibility) 
VALUES (5, '14466_006', 202401, '2024-1학기', 4, '온라인 강의로 진행되었으나 자료 준비가 철저했습니다.', 9, 1, '보통', '보통', '너그러움');

CREATE TABLE ExamInfo (
    exam_info_id INT PRIMARY KEY,         -- 시험 정보의 고유 ID
    course_id VARCHAR(20),                -- 관련 강의의 ID
    creator_id INT,                       -- 시험을 만든 사람의 ID
    semester VARCHAR(20),                 -- 학기 (예: '2024-1학기', '2024-2학기')
    exam_round VARCHAR(20),               -- 시험 회차 (예: '중간고사', '기말고사')
    exam_strategy TEXT,                   -- 시험 전략
    question_type TEXT,                   -- 문제 유형 (중복 가능)
    question_example TEXT,                -- 문제 예시 (2가지 이상)
    recommend_count INT,                  -- 추천 수
    not_recommend_count INT,              -- 비추천 수
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

INSERT INTO ExamInfo (exam_info_id, course_id, creator_id, semester, exam_round, exam_strategy, question_type, question_example, recommend_count, not_recommend_count) 
VALUES 
(1, '14466_006', 301, '2024-1학기', '중간고사', 'ER 모델링과 SQL 문제 위주', '객관식, 주관식', 'ER 모델링 문제, SQL 질의 작성 문제', 20, 0),

(2, '14466_006', 302, '2024-1학기', '기말고사', '데이터베이스 설계 중심', '주관식, 약술형', '정규화 과정 설명, SQL 최적화 방법', 15, 1),

(3, '14466_006', 303, '2024-2학기', '중간고사', '이론 및 실습 병행', '객관식, T/F형', 'DBMS의 특징, 트랜잭션의 원자성', 18, 2),

(4, '14466_006', 304, '2024-2학기', '기말고사', '과제 기반 평가', '논술형, 구술', '실습 프로젝트 설명, 데이터베이스 설계 문제', 12, 1);

CREATE TABLE user (
    i_user INT PRIMARY KEY,         -- 유저의 고유 ID
    student_id INT,                 -- 학번
    user_nm VARCHAR(100),           -- 유저 이름
    user_id VARCHAR(50) UNIQUE,     -- 유저 로그인 ID
    user_pw VARCHAR(100),           -- 유저 비밀번호
    ph VARCHAR(20),                 -- 전화번호
    school_id VARCHAR(20),          -- 학교 ID
    mail VARCHAR(100),              -- 이메일
    nickname VARCHAR(50)            -- 닉네임
);

INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (1, 202135784, '송민의', 'user_1', 'pass_4392', '1088975345', 'd001', 'user1@naver.com', '민호');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (2, 202135835, '정지호', 'user_2', 'pass_4052', '1005680024', 'd001', 'user2@naver.com', '호용');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (3, 202135784, '정용준', 'user_3', 'pass_7103', '1082986134', 'd001', 'user3@naver.com', '용효');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (4, 202235004, '고효경', 'user_4', 'pass_5013', '1034551855', 'd001', 'user4@naver.com', '효정');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (5, 202334455, '남윤정', 'user_5', 'pass_7432', '1027656201', 'd001', 'user5@gmail.com', '정성');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (6, 202301766, '강민성', 'user_6', 'pass_4870', '1088471247', 'd002', 'user6@daum.net', '성연');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (7, 202202177, '이서연', 'user_7', 'pass_5774', '1052287039', 'd001', 'user7@naver.com', '연진');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (8, 202267403, '최유진', 'user_8', 'pass_6802', '1021533231', 'd003', 'user8@naver.com', '진민');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (9, 202380812, '오지민', 'user_9', 'pass_4155', '1019582741', 'd003', 'user9@gmail.com', '민우');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (10, 202395740, '윤시우', 'user_10', 'pass_8536', '1016061661', 'd00', 'user10@daum.net', '우강');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (11, 202193136, '강민성', 'user_11', 'pass_1982', '1028456768', 'd001', 'user11@daum.net', '강윤');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (12, 202300067, '정서윤', 'user_12', 'pass_9357', '1050358211', 'd002', 'user12@naver.com', '윤하');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (13, 202194905, '박하준', 'user_13', 'pass_5984', '1050386709', 'd004', 'user13@gmail.com', '하도');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (14, 202158365, '이도연', 'user_14', 'pass_9032', '1080882188', 'd001', 'user14@gmail.com', '도지');
INSERT INTO user (i_user, student_id, user_nm, user_id, user_pw, ph, school_id, mail, nickname) 
VALUES (15, 202376406, '최민지', 'user_15', 'pass_4782', '1090740631', 'd001', 'user15@naver.com', '지민');

CREATE TABLE UserSanction (
    sanction_id INT PRIMARY KEY AUTO_INCREMENT,
    evaluator_id INT, -- 신고를 당한 유저의 ID
    sanction_type VARCHAR(50), -- 제재 종류 (경고, 차단 등)
    reason TEXT, -- 제재 사유
    sanction_date DATETIME DEFAULT CURRENT_TIMESTAMP, -- 제재 일시
    FOREIGN KEY (evaluator_id) REFERENCES user(i_user) -- 유저 정보와 연결
);

INSERT INTO UserSanction (evaluator_id, sanction_type, reason, sanction_date)
VALUES 
(1, '경고', '부적절한 언행', '2024-11-01 10:30:00'),
(2, '차단', '지속적인 스팸', '2024-11-05 14:45:00'),
(3, '경고', '규칙 위반', '2024-11-10 09:15:00'),
(4, '차단', '모욕적인 언행', '2024-11-15 11:00:00'),
(5, '경고', '비속어 사용', '2024-11-20 13:20:00');





