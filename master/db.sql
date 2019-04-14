-- drop table if exists log;

-- create a table for logging
create table log (
  id serial primary key,
  text text,
  time timestamp default (CURRENT_TIMESTAMP)
);

insert into log (text) values('Initializing Database...');
