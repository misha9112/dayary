create table diary (
id number primary key,
u_id varchar2(15),
title varchar2(50),
contents clob,
regdate date not null
);

create SEQUENCE seq_diary_id;

insert into diary values(seq_diary_id.nextval, 'misha', '첫 번째 일기', '곧 점심시간이다', sysdate);
insert into diary values(seq_diary_id.nextval, 'misha', '두 번째 일기', '곧 프로젝트를 시작해야 한다.', sysdate);

commit;

select * from diary;