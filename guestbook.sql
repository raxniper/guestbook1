drop table guestbook;
drop sequence seq_guestbook_no;

create table guestbook (
  no        number,
  name      varchar2(80),
  password  varchar2(20),
  content   varchar2(2000),
  reg_date  date,
  primary key(no)	
);

create sequence seq_guestbook_no
increment by 1 
start with 1 
nocache ;


insert into guestbook
			       (no,
			        name,
			        password,	
			        content,
			        reg_date)
values (seq_guestbook_no.nextval, 
        '이정재', 
        '1234', 
        '방문합니다.',
        sysdate);
        
insert into guestbook values (seq_guestbook_no.nextval, '김현수', '1234', '김현수 방문합니다.', sysdate);
insert into guestbook values (seq_guestbook_no.nextval, '진헌태', '1234', '진헌태 방문합니다.', sysdate);
insert into guestbook values (seq_guestbook_no.nextval, '이현준', '1234', '이현준 방문합니다.', sysdate);
insert into guestbook values (seq_guestbook_no.nextval, '김태석', '1234', '김태석 방문합니다.', sysdate);
insert into guestbook values (seq_guestbook_no.nextval, '김지성', '1234', '김지성 방문합니다.', sysdate);
insert into guestbook values (seq_guestbook_no.nextval, '김우성', '1234', '김우성 방문합니다.', sysdate);
insert into guestbook values (seq_guestbook_no.nextval, '안용준', '1234', '안용준 방문합니다.', sysdate);        
 
commit;

--delete
delete from guestbook
where no= 1 
and password= '1234';

--select all
select 	no,
        name,
        password,	
        content,
        reg_date
from guestbook
order by no asc;


