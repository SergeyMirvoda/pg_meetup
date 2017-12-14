﻿
select corr("Revenue", "Number of children who walked by") as "Correlation" from
(
select       44 as "Revenue", 28.2 as "Temperature", 30 as "Minutes of Breaktime", 43 as "Number of children who walked by", 38 as "Number of adults who walked by", 'Hand-painted' as "Signage", 20 as "Competitor’s revenue"
union select 23,              21.4,                42,                           28,                                       207,                                    'LED',                       30
union select 43,              32.9,                14,                           43,                                       364,                                    'Hand-painted',              34
union select 30,          24.0,               24,                             18,                                       103,                                       'LED',                    15
) data