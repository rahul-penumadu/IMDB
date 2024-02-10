spool Op_analysis1b.txt
set echo on

column column_name format a40
set linesize 200
set lines 150

---------------------------------------------------------------------------------------
-- query: Total number of movies made by Audrey Hepburn in each decade across their career span
---------------------------------------------------------------------------------------
select 'Audrey Hepburn',col,sum(count) from (select startyear,count(startyear) as count,
case when startyear>='1951' and startyear<='1960' then '1950s'
when startyear>='1961' and startyear<='1970' then '1960s'
when startyear>='1971' and startyear<='1980' then '1970s'
when startyear>='1981' and startyear<='1990' then '1980s'
when startyear>='1991' and startyear<='2000' then '1990s'
when startyear>='2001' and startyear<='2010' then '2000s'
when startyear>='2011' and startyear<='2020' then '2010s'
when startyear>='2021' and startyear<='2030' then '2020s'
end as col
from imdb00.title_basics where lower(titletype)='movie' and tconst in (select tconst from imdb00.title_principals where nconst='nm0000030' and lower(category)='actress')
and startyear NOT LIKE '\N' group by startyear) group by col order by col;


---------------------------------------------------------------------------------------
-- query: Total number of movies made by Harrison Ford in each decade across their career span
---------------------------------------------------------------------------------------

select 'Harrison Ford',col,sum(count) from (select startyear,count(startyear) as count,
case when startyear>='1951' and startyear<='1960' then '1950s'
when startyear>='1961' and startyear<='1970' then '1960s'
when startyear>='1971' and startyear<='1980' then '1970s'
when startyear>='1981' and startyear<='1990' then '1980s'
when startyear>='1991' and startyear<='2000' then '1990s'
when startyear>='2001' and startyear<='2010' then '2000s'
when startyear>='2011' and startyear<='2020' then '2010s'
when startyear>='2021' and startyear<='2030' then '2020s'
end as col
from imdb00.title_basics where lower(titletype)='movie' and tconst in (select tconst from imdb00.title_principals where nconst='nm0000148' and lower(category)='actor')
and startyear NOT LIKE '\N' group by startyear order by 1) group by col order by col;


---------------------------------------------------------------------------------------
-- query: Total number of movies made by Jayalalitha in each decade across their career span
---------------------------------------------------------------------------------------
select 'JayaLalitha', col,sum(count) from (select startyear,count(startyear) as count,
case when startyear>='1951' and startyear<='1960' then '1950s'
when startyear>='1961' and startyear<='1970' then '1960s'
when startyear>='1971' and startyear<='1980' then '1970s'
when startyear>='1981' and startyear<='1990' then '1980s'
when startyear>='1991' and startyear<='2000' then '1990s'
when startyear>='2001' and startyear<='2010' then '2000s'
when startyear>='2011' and startyear<='2020' then '2010s'
when startyear>='2021' and startyear<='2030' then '2020s'
end as col
from imdb00.title_basics where lower(titletype)='movie' and tconst in (select tconst from imdb00.title_principals where nconst='nm0412883' and lower(category)='actress')
and startyear NOT LIKE '\N' group by startyear order by 1) group by col order by col;


---------------------------------------------------------------------------------------
-- query: Total number of movies made by Mohan Babu in each decade across their career span
---------------------------------------------------------------------------------------
select 'Mohan Babu',col,sum(count) from (select startyear,count(startyear) as count,
case when startyear>='1951' and startyear<='1960' then '1950s'
when startyear>='1961' and startyear<='1970' then '1960s'
when startyear>='1971' and startyear<='1980' then '1970s'
when startyear>='1981' and startyear<='1990' then '1980s'
when startyear>='1991' and startyear<='2000' then '1990s'
when startyear>='2001' and startyear<='2010' then '2000s'
when startyear>='2011' and startyear<='2020' then '2010s'
when startyear>='2021' and startyear<='2030' then '2020s'
end as col
from imdb00.title_basics where lower(titletype)='movie' and tconst in (select tconst from imdb00.title_principals where nconst='nm0595934' and lower(category)='actor')
and startyear NOT LIKE '\N' group by startyear order by 1) group by col order by col;


Set echo off
Spool off