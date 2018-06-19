create table diary (
id number primary key,
u_id varchar2(15),
title varchar2(50),
contents clob,
regdate date not null
);

create SEQUENCE seq_diary_id;

insert into diary values(seq_diary_id.nextval, 'misha', 'ù ��° �ϱ�', '�� ���ɽð��̴�', sysdate);
insert into diary values(seq_diary_id.nextval, 'misha', '�� ��° �ϱ�', '�� ������Ʈ�� �����ؾ� �Ѵ�.', sysdate);

commit;

select * from diary;