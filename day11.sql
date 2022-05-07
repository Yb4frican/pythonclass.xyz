use schoolmanagementsystem;

select * from studentsperformance where raceethnicity = 'group A' and mathscore = 80;
#this and function states that all conditions must be true before execution
select * from studentsperformance where raceethnicity = 'group B' or mathscore > 95;
# the or condition states that one condition can be true for the function to be executed
select * from studentsperformance where (lunch = 'standard' and raceethnicity = 'group C') or (mathscore >= 72);
select * from studentsperformance where lunch like 's%';
select * from studentsperformance where lunch not like 's%';
select * from studentsperformance where mathscore <>90; 
#note '<>' is called the not equal to function
# note in the action output bellow 992 out of 1000 records are seen as 8 of those records where equal to 90
select * from studentsperformance where parentallevelofeducation is null;
#this restores the previous values that were missing under parentallevelofeducation
select * from studentsperformance where parentallevelofeducation is not null;
#this is the opposite of not null

alter table studentsperformance add column ID int primary key auto_increment first;
describe studentsperformance;
#this has added ID column in the table
select * from studentsperformance where raceethnicity in ('group A', 'group C', 'group E');
# the 'in' function acts like an or statement as it either selects group a or group c or group e

select * from studentsperformance where ID between 450 and 500;
#the between function acts as a range to the table 

create table groupAdetails select * from studentsperformance where raceethnicity = 'group A';
create table groupBdetails select *from studentsperformance where raceethnicity = 'group B';
create table groupCdetails select *from studentsperformance where raceethnicity = 'group C';
create table groupDdetails select *from studentsperformance where raceethnicity = 'group D';
create table groupEdetails select *from studentsperformance where raceethnicity = 'group E';
#how to join two tables together
#to bring two records from said tables this will be possible 
#but this cant be possible without an identifier

select * from groupAdetails;
#the first joining is the inner joining it is used to return all rows from multiple tables
select groupAdetails.gender,groupAdetails.raceethnicity,groupAdetails.lunch,
groupBdetails.gender,groupBdetails.raceethnicity,groupBdetails.gender from groupAdetails inner join
groupBdetails on groupAdetails.ID = groupBdetails.ID;
# the records are empty because groupA and groupB details have different ID if the ID are the same inner join function will work

select groupAdetails.gender,groupAdetails.raceethnicity,groupAdetails.lunch,
groupBdetails.gender,groupBdetails.raceethnicity,groupBdetails.gender from groupAdetails inner join
groupBdetails;

select groupAdetails.gender,groupAdetails.raceethnicity,groupAdetails.lunch,
groupBdetails.gender,groupBdetails.raceethnicity,groupBdetails.gender from groupAdetails right join groupBdetails on groupAdetails.gender = groupBdetails.gender;
#right join is another way of joining tables together

select gender, raceethnicity from groupAdetails cross join groupBdetails;
# cross join?; is used for joining big values so it cannot be used on MysQl.
