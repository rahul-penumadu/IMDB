spool Op_analysis2.txt
set echo on

column column_name format a40
set linesize 200
set lines 150

---------------------------------------------------------------------------------------
-- query: 1.Actor with most movies
--        2.Actress with most movies
--        3.Actor with 3 movies
--        4.Actress with 4 movies
---------------------------------------------------------------------------------------

select 
cast(PRIMARYNAME as varchar(40)) as Name, YEAR, COUNT ,case when category = 'actor' and ROW_NUMBER=1 then '1.Actor with most movies'
when category = 'actress' and ROW_NUMBER=1 then '2.Actress with most movies'
when category = 'actor' and ROW_NUMBER>1 then '3.Actor with 3 movies'
when category = 'actress' and ROW_NUMBER>1 then '4.Actress with 4 movies' end as Remark
 from (

SELECT NB.primaryname,min(TB.startyear) year,min(TP.category) category,COUNT(*) count,ROW_NUMBER() OVER (partition by min(TP.category) ORDER BY count(*) desc) AS row_number
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titleType) = 'movie' AND
        LOWER(TP.category) IN ('actor','actress') AND TB.startyear NOT LIKE '\N' and
        tb.startyear>='1982' and tb.startyear <='1991'
       
GROUP BY NB.nconst, NB.primaryname
ORDER BY COUNT(*) DESC
) where row_number = '1' or count = '3' order by remark,year
;
 

Set echo off
Spool off