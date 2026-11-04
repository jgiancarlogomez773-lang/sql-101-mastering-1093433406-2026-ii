-- Exercise 01 - c
-- NOW() and CURRENT_DATE in a single row, no table

SELECT
    NOW() AS now_ts,
    CURRENT_DATE AS today;

/*
            now_ts             |   today
-------------------------------+------------
 2026-11-04 18:16:00.976358-05 | 2026-11-04
*/
