##DATE FUNCTIONS

Select current_date();

Select curdate();

Select sysdate();

Select now();

Select date("2019-10-15 09:34:21");

Select month("2019-10-15 09:34:21");

Select monthname("2019-10-15 09:34:21");

Select year("2019-10-15 09:34:21");

Select quarter("2019-10-15 09:34:21");

Select day("2019-10-15 09:34:21");

Select dayofmonth("2019-10-15 09:34:21");

Select dayname("2019-10-15 09:34:21");

Select dayofweek("2025-10-09 09:49:21");

Select dayofyear("2019-10-15 09:34:21");

Select week("2019-10-15 09:34:21");

Select weekday("2025-10-14 09:34:21");

Select yearweek("2019-10-15 09:34:21");

Select last_day("2025-10-09 09:49:21");

Select extract(month from "2025-10-09 09:49:21");

year,week,hour,minute,second

Select adddate("2025-10-15",interval 10 day);

Select adddate("2025-10-15",interval 1 month);

Select adddate("2025-10-15",interval 1 year);

Select date_add("2025-10-15",interval 5000 minute);

Select subdate("2025-10-15",interval 1 month);

Select datediff("2024-10-15","2025-09-15");

## Time Functions

Select current_time();

Select curtime();

Select current_timestamp();

Select localtime();

Select localtimestamp();

Select time("2019-10-15 09:34:21");

Select hour("2019-10-15 09:34:21");

Select minute("2019-10-15 09:34:21");

Select second("2019-10-15 09:34:21");

Select timediff("09:23:21","09:34:21");
