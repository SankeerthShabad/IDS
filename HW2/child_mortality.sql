select * from child_mortality;
set sql_safe_updates=0;
set @hi := -1;
select AVG(d.Underfive) as Underfive_median
from (select  @hi :=  @hi + 1 as hi, child_mortality.Underfive as Underfive
from child_mortality
order by child_mortality.Underfive)as d
where d.hi in(floor(@hi/2),ceil(@hi/2));
Update child_mortality set Underfive=66.7 where Underfive=0;
select * from child_mortality;
set @hi := -1;
select AVG(d.Infant) as Infant_median
from (select  @hi :=  @hi + 1 as hi, child_mortality.Infant as Infant
from child_mortality
order by child_mortality.Infant)as d
where d.hi in(floor(@hi/2),ceil(@hi/2));
Update child_mortality set Infant=46.9 where Infant=0;
select * from child_mortality;
set @hi := -1;
select AVG(d.Neonatal) as Neonatal_median
from (select  @hi :=  @hi + 1 as hi, child_mortality.Neonatal as Neonatal
from child_mortality
order by child_mortality.Neonatal)as d
where d.hi in(floor(@hi/2),ceil(@hi/2));
Update child_mortality set Neonatal=26.1 where Neonatal=0;
select * from child_mortality;
select year from child_mortality where Infant=(select min(Infant)from child_mortality);
select Infant from child_mortality order by 1;
select avg(Infant),min(Infant),max(Infant),variance(Infant),stddev_pop(Infant) from child_mortality;
select avg(Neonatal),min(Neonatal),max(Neonatal),variance(Neonatal),stddev_pop(Neonatal) from child_mortality;
select avg(Underfive),min(Underfive),max(Underfive),variance(Underfive),stddev_pop(Underfive) from child_mortality;
Alter table child_mortality add Abovefive_Mortality_rate double;
update child_mortality set Abovefive_Mortality_rate=Infant*2; 
select * from child_mortality;



