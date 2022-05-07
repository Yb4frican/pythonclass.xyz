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
use hospitalrecordsystem;
create table adminrecords(ID int primary key not null, Adminname varchar(255) not null,
Admingender varchar(45) not null,AdminDOB date not null,Adminaddress text not null,
Admincontact varchar(45) not null, Adminstate varchar(45), AdminDateofE date not null,
Adminposition varchar(100) not null);

select * from adminrecords;
insert into adminrecords(ID,Adminname,Admingender,AdminDOB,Adminaddress,Admincontact,Adminstate,AdminDateofE,Adminposition) values
(1,'John njoku','male','1970-02-26','No 25 highway street','08052495939','Abia','2008-02-02','Senior Admin officed1'),
(2,'Akpan bassy','male','1991-12-26','No 30 Uju street','08033487629','Akwa-ibom','2017-05-02','junior Admin officed1'),
(3,'Akinbade jane','female','1960-08-16','No 99 abacha street','09156984752','oyo','1980-05-02','Director1'),
(4,'lawal musa','male','1965-10-16','No 21 abacha street','07012365487','nasarawa','1985-05-02','Director2'),
(5,'osaro emodi','male','1970-11-11','No 99 abacha street','08190906767','Edo','1987-09-10','assistant Director1'),
(6,'Edibo Glory','female','1979-05-16','No 50 abacha street','07012369852','kogi','1990-05-02','assistant Director2'),
(7,'phonix samuel','female','1986-02-06','No 50 kulende street','08185630232','delta','2001-05-02','General senior Admin officde'),
(8,'olaolu Ania','male','1990-05-16','No 70 miracle street','08025414145','osun','2010-05-02','Senior Admin officee'),
(9,'obiano okoro','male','1999-03-30','No 20 Ndi street','08112385694','Enugu','2022-02-02','intern'),
(10,'patient lawal','female','1997-05-16','No 50 okoroA street','08025897777','kaduna','2019-09-25','junior Admin officde2');
select * from adminrecords;

select Adminname,Adminposition from adminrecords;
select * from adminrecords where ID =10;
update adminrecords set Adminaddress = 'No 100 Ajaokuta street' where ID = 5;
select * from adminrecords;
delete from adminrecords where ID = 10;
select * from adminrecords;

create index Adminposition on adminrecords(Adminposition);
show indexes from adminrecords;

select * from adminrecords where Adminposition = 'Senior Admin officde2';
drop index Adminposition on adminrecords;
show indexes from adminrecords;