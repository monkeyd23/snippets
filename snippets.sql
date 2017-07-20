/* Get first date of last year and last date of current year  */
SELECT 
    date_trunc('YEAR', (CURRENT_DATE - INTERVAL '1 YEAR'))::TIMESTAMP as start_time,
    extract('epoch' from date_trunc('YEAR', (CURRENT_DATE - INTERVAL '1 YEAR'))::TIMESTAMP)::bigint as start_epoch,
    (date_trunc('YEAR', (CURRENT_DATE + INTERVAL '1 YEAR')) - INTERVAL '1 SEC')::TIMESTAMP as end_time,
    extract('epoch' from (date_trunc('YEAR', (CURRENT_DATE + INTERVAL '1 YEAR')) - INTERVAL '1 SEC')::TIMESTAMP)::bigint as end_epoch;

/* Big Int to date */
TO_CHAR(TO_TIMESTAMP(bigint_field / 1000), 'DD/MM/YYYY HH24:MI:SS')

/* Number of days between to bigint epochs */
extract(day from ('1970-01-01 00:00:00 GMT'::timestamp + ((dw.expiry_date/1000)::text)::interval) - ('1970-01-01 00:00:00 GMT'::timestamp + ((qt.time/1000)::text)::interval) )


/* Current Year */
SELECT 
date_trunc('YEAR',  CURRENT_DATE) as current_year_start_date,
date_trunc('YEAR', (CURRENT_DATE + INTERVAL '1 YEAR')) - INTERVAL '1 SEC' as current_year_end_date,
/* Last Year */
date_trunc('YEAR',  CURRENT_DATE - INTERVAL '1 YEAR') as last_year_start_date,
date_trunc('YEAR', CURRENT_DATE) - INTERVAL '1 SEC' as last_year_end_date,
/* Current Month */
date_trunc('MONTH',  CURRENT_DATE) as current_month_start_date,
date_trunc('MONTH', (CURRENT_DATE + INTERVAL '1 MONTH')) - INTERVAL '1 SEC' as current_month_end_date,
/* Last Month */
date_trunc('MONTH',  CURRENT_DATE) - INTERVAL '1 YEAR' as last_month_start_date,
date_trunc('MONTH', (CURRENT_DATE + INTERVAL '1 MONTH')) - INTERVAL '1 SEC' - INTERVAL '1 YEAR' as current_month_end_date,
/* Current Quarter */
date_trunc('QUARTER',  CURRENT_DATE) as current_quarter_start_date,
date_trunc('QUARTER', (CURRENT_DATE + INTERVAL '3 MONTH')) - INTERVAL '1 SEC' as current_quarter_end_date,
/* Last Quarter */
date_trunc('QUARTER',  CURRENT_DATE - INTERVAL '1 YEAR') as last_quarter_start_date,
date_trunc('QUARTER', (CURRENT_DATE + INTERVAL '3 MONTH')) - INTERVAL '1 SEC' - INTERVAL '1 YEAR' as last_quarter_end_date;
