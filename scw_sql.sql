--connect to database survey.db
sqlite3 survey.db
.schema --show me the tables
.schema Person --show me the table person
select personal, family from Person
select * from Person order by personal desc;
select * from Person where personal ='Frank';;
select family from Person where personal >'G';
select * from Site where name='DR-1' or name='DR-3';
select * from Site where name in ('DR-1','DR-3'); --same as line 9
select * from Site where lat < -48;
select max(lat) from Site;
select min(abs(lat)) from Site;
select count(*) from Survey; --#of records
select * from Visited;
select count(*) from Visited;
select * from Visited where dated>='1930-01-01'; -- doesn't return records with NULL dates
select * from Visited where dated is null;
select * from Visited where dated is not null;
select * from Site join Visited on Site.name = Visited.site; -- on the condition that name from Site == site from Visited
--where is a filter happens after the join, on is a condition of the join happens at the same time as the join
select * from Site join Visited on Site.name = Visited.site where Site.name = 'DR-3';
select Site.lat, Site.long, Visited.dated from Site join Visited on Site.name = Visited.site where Visited.dated is not null; 

--save query
nano query.example.sql
-- run your script on survey database
sqlite3 survey.db < qexample.sql 
-- how many rows in your output table
sqlite3 survey.db < qexample.sql | wc -l 
-- see the last 3 rows of the output table
sqlite3 survey.db < qexample.sql | tail -3 

.dump --tells you how to how the db was made, a text file output of the database -> then you can save versions on the .dump file with git

--you can create the db using .schema to insert tables


