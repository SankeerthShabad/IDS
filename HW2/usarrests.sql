SELECT * FROM test.usarrests;
select avg(Assault) from usarrests;
set sql_safe_updates=0;
update usarrests set assault=166.54 where state='Georgia';
select * from usarrests;
select min(Murder),max(Murder),avg(Murder),variance(Murder) from usarrests;
select min(Assault),max(Assault),avg(Assault),variance(Assault) from usarrests;
select min(UrbanPop),max(UrbanPop),avg(UrbanPop),variance(UrbanPop) from usarrests;
select State from usarrests where Murder=(select max(Murder) from usarrests);
select state from usarrests order by UrbanPop asc;
select state from usarrests where Murder>(select Murder from usarrests where state='Arizona');
