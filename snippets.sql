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
