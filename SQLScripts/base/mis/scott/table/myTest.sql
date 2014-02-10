-- Create table
create table scott.myTest (
  id   integer,
  name varchar2(50)
);
-- Add comments to the table 
comment on table scott.myTest is '测试表';

-- Add comments to the columns 
comment on column scott.myTest.id is '身份id';
comment on column scott.myTest.name is '姓名';

-- Create/Recreate primary, unique and foreign key constraints 
alter table scott.myTest add constraint scott_pk_id primary key (ID);