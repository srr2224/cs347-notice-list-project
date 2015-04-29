DROP SEQUENCE NL_DIV_seq ; 
create sequence NL_DIV_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger NL_DIV_PK_trig 
before insert on NL_DIV
for each row 
begin 
select NL_DIV_seq.nextval into :new.div_id from dual; 
end; 
/
alter table NL_DIV add created date ; 
alter table NL_DIV add created_by VARCHAR2 (255) ; 
alter table NL_DIV add row_version_number integer ; 
alter table NL_DIV add updated date ; 
alter table NL_DIV add updated_by VARCHAR2 (255) ; 
/
create or replace trigger NL_DIV_AUD_trig 
before insert or update on NL_DIV 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE NL_DOCUMENT_seq ; 
create sequence NL_DOCUMENT_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger NL_DOCUMENT_PK_trig 
before insert on NL_DOCUMENT
for each row 
begin 
select NL_DOCUMENT_seq.nextval into :new.document_id from dual; 
end; 
/
alter table NL_DOCUMENT add created date ; 
alter table NL_DOCUMENT add created_by VARCHAR2 (255) ; 
alter table NL_DOCUMENT add row_version_number integer ; 
alter table NL_DOCUMENT add updated date ; 
alter table NL_DOCUMENT add updated_by VARCHAR2 (255) ; 
/
create or replace trigger NL_DOCUMENT_AUD_trig 
before insert or update on NL_DOCUMENT 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE NL_EMPLOYEE_seq ; 
create sequence NL_EMPLOYEE_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger NL_EMPLOYEE_PK_trig 
before insert on NL_EMPLOYEE
for each row 
begin 
select NL_EMPLOYEE_seq.nextval into :new.employee_id from dual; 
end; 
/
alter table NL_EMPLOYEE add created date ; 
alter table NL_EMPLOYEE add created_by VARCHAR2 (255) ; 
alter table NL_EMPLOYEE add row_version_number integer ; 
alter table NL_EMPLOYEE add updated date ; 
alter table NL_EMPLOYEE add updated_by VARCHAR2 (255) ; 
/
create or replace trigger NL_EMPLOYEE_AUD_trig 
before insert or update on NL_EMPLOYEE 
for each row 
begin 
  if inserting then
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
    if :new.status <> :old.status then
      :new.status_eff_date := localtimestamp; 
    end if;
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE NL_LAB_seq ; 
create sequence NL_LAB_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger NL_LAB_PK_trig 
before insert on NL_LAB
for each row 
begin 
select NL_LAB_seq.nextval into :new.lab_id from dual; 
end; 
/
alter table NL_LAB add created date ; 
alter table NL_LAB add created_by VARCHAR2 (255) ; 
alter table NL_LAB add row_version_number integer ; 
alter table NL_LAB add updated date ; 
alter table NL_LAB add updated_by VARCHAR2 (255) ; 
/
create or replace trigger NL_LAB_AUD_trig 
before insert or update on NL_LAB 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE NL_MEMBER_seq ; 
create sequence NL_MEMBER_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger NL_MEMBER_PK_trig 
before insert on NL_MEMBER
for each row 
begin 
select NL_MEMBER_seq.nextval into :new.member_id from dual; 
end; 
/
alter table NL_MEMBER add created date ; 
alter table NL_MEMBER add created_by VARCHAR2 (255) ; 
alter table NL_MEMBER add row_version_number integer ; 
alter table NL_MEMBER add updated date ; 
alter table NL_MEMBER add updated_by VARCHAR2 (255) ; 
/
create or replace trigger NL_MEMBER_AUD_trig 
before insert or update on NL_MEMBER 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE NL_NOTICE_LIST_seq ; 
create sequence NL_NOTICE_LIST_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger NL_NOTICE_LIST_PK_trig 
before insert on NL_NOTICE_LIST
for each row 
begin 
select NL_NOTICE_LIST_seq.nextval into :new.notice_list_id from dual; 
end; 
/
alter table NL_NOTICE_LIST add created date ; 
alter table NL_NOTICE_LIST add created_by VARCHAR2 (255) ; 
alter table NL_NOTICE_LIST add row_version_number integer ; 
alter table NL_NOTICE_LIST add updated date ; 
alter table NL_NOTICE_LIST add updated_by VARCHAR2 (255) ; 
/
create or replace trigger NL_NOTICE_LIST_AUD_trig 
before insert or update on NL_NOTICE_LIST 
for each row 
begin 
  if inserting then 
    :new.status_eff_date := localtimestamp; 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    if :new.status <> :old.status then
      :new.status_eff_date := localtimestamp; 
    end if;
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP INDEX NL_LAB_lab_id_FK_0 ;
CREATE INDEX NL_LAB_lab_id_FK_0 ON NL_DIV(NL_LAB_lab_id) ;
DROP INDEX NL_EMPLOYEE_employee_i_FK_1 ;
CREATE INDEX NL_EMPLOYEE_employee_i_FK_1 ON NL_DOCUMENT(NL_EMPLOYEE_employee_id) ;
DROP INDEX NL_DIV_div_id_FK_2 ;
CREATE INDEX NL_DIV_div_id_FK_2 ON NL_EMPLOYEE(NL_DIV_div_id) ;
DROP INDEX NL_EMPLOYEE_member_id_FK_3 ;
CREATE INDEX NL_EMPLOYEE_member_id_FK_3 ON NL_MEMBER(NL_EMPLOYEE_member_id) ;
DROP INDEX NL_NOTICE_LIST_notice__FK_4 ;
CREATE INDEX NL_NOTICE_LIST_notice__FK_4 ON NL_MEMBER(NL_NOTICE_LIST_notice_list_id) ;
DROP INDEX NL_NOTICE_LIST_member__FK_5 ;
CREATE INDEX NL_NOTICE_LIST_member__FK_5 ON NL_MEMBER(NL_NOTICE_LIST_member_id) ;
DROP INDEX NL_DIV_div_id_FK_6 ;
CREATE INDEX NL_DIV_div_id_FK_6 ON NL_NOTICE_LIST(NL_DIV_div_id) ;
