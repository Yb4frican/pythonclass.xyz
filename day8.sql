use hospitalrecordsystem;
create table admindetails(ID int primary key not null, adminname varchar(255) not null,
admingender varchar(45) not null);
alter table admindetails add column admindob date not null;
show columns from admindetails;
alter table admindetails modify adminname varchar(155) not null;
show columns from admindetails;
alter table admindetails change column ID AdminID int not null;
show columns from admindetails;
alter table admindetails drop column admindob;
show columns from admindetails;
alter table admindetails add column patientID int not null first;
show columns from admindetails;
alter table admindetails add column admindob date not null after adminname;
show columns from admindetails;
alter table admindetails rename to adminrecords;
show columns from adminrecords;
show tables;
drop table adminrecords;