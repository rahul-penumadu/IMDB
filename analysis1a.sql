spool Op_analysis1a.txt
set echo on

column column_name format a40
set linesize 200
set lines 150

---------------------------------------------------------------------------------------
-- query: Total number of movies made by Audrey Hepburn in each year across their career span
---------------------------------------------------------------------------------------
SELECT
    'Audrey Hepburn',
    startyear,
    COUNT(startyear) AS year
FROM
    imdb00.title_basics
WHERE
        lower(titletype) = 'movie'
    AND tconst IN (
        SELECT
            tconst
        FROM
            imdb00.title_principals
        WHERE
                nconst = 'nm0000030'
            AND lower(category) = 'actress'
    )
    AND startyear NOT LIKE '\N'
GROUP BY
    startyear
ORDER BY
    2;


---------------------------------------------------------------------------------------
-- query: Total number of movies made by Harrison Ford in each year across their career span
---------------------------------------------------------------------------------------
SELECT
    'Harrison Ford',
    startyear,
    COUNT(startyear) AS year
FROM
    imdb00.title_basics
WHERE
        lower(titletype) = 'movie'
    AND tconst IN (
        SELECT
            tconst
        FROM
            imdb00.title_principals
        WHERE
                nconst = 'nm0000148'
            AND lower(category) = 'actor'
    )
    AND startyear NOT LIKE '\N'
GROUP BY
    startyear
ORDER BY
    2;

---------------------------------------------------------------------------------------
-- query: Total number of movies made by Jayalalitha in each year across their career span
---------------------------------------------------------------------------------------
SELECT
    'JayaLalitha',
    startyear,
    COUNT(startyear) AS year
FROM
    imdb00.title_basics
WHERE
        lower(titletype) = 'movie'
    AND tconst IN (
        SELECT
            tconst
        FROM
            imdb00.title_principals
        WHERE
                nconst = 'nm0412883'
            AND lower(category) = 'actress'
    )
    AND startyear NOT LIKE '\N'
GROUP BY
    startyear
ORDER BY
    2;

---------------------------------------------------------------------------------------
-- query: Total number of movies made by Mohan Babu in each year across their career span
---------------------------------------------------------------------------------------
SELECT
    'Mohan Babu',
    startyear,
    COUNT(startyear) AS year
FROM
    imdb00.title_basics
WHERE
        lower(titletype) = 'movie'
    AND tconst IN (
        SELECT
            tconst
        FROM
            imdb00.title_principals
        WHERE
                nconst = 'nm0595934'
            AND lower(category) = 'actor'
    )
    AND startyear NOT LIKE '\N'
GROUP BY
    startyear
ORDER BY
    2;

Set echo off
Spool off