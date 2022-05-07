create database schoolmanagementsystem;
use schoolmanagementsystem;

select * from studentsperformance where raceethnicity = 'group B';

select * from studentsperformance order by lunch;

select * from studentsperformance order by lunch desc;

select * from studentsperformance group by raceethnicity order by lunch;

select parentallevelofeducation, if(mathscore > 87,True,False) as result from studentsperformance;

select *, ifnull(gender,raceethnicity) as result from studentsperformance;

select *,
CASE raceethnicity
  when 'group A' then 'Africans'
  when 'group B' then 'Asians'
  when 'group C' then 'Europians'
  when 'group D' then 'South Americans'
  else 'North Americans'
end as Regions from studentsperformance;
#solution;
#1.
select*, nullif(mathscore,writingscore) as result from studentsperformance;
#2.
select gender,raceethnicity from studentsperformance;

#3.
select * from studentsperformance order by raceethnicity desc;