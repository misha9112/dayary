create user ryu identified by 11111111;
grant dba to ryu;

create user commitnpush identified by 11111111;

grant dba to commitnpush;

create table diary(
    id number primary key,
    u_id varchar2(15),
    title varchar2(50),
    content clob not null,
    regdate date not null
);
create sequence seq_diary_id;

insert into diary 
values(seq_diary_id.nextval, 'flynn', '첫 번째 일기', 
       '곧 점심시간이다', sysdate);
       
insert into diary 
values(seq_diary_id.nextval, 'flynn', '두 번째 일기', 
       '곧 프로젝트를 시작해야 한다', sysdate);
commit;
delete diary;
       


