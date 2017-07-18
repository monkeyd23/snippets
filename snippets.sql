/* Get first date of last year and last date of current year  */
SELECT 
    date_trunc('YEAR', (CURRENT_DATE - INTERVAL '1 YEAR'))::TIMESTAMP as start_time,
    extract('epoch' from date_trunc('YEAR', (CURRENT_DATE - INTERVAL '1 YEAR'))::TIMESTAMP)::bigint as start_epoch,
    (date_trunc('YEAR', (CURRENT_DATE + INTERVAL '1 YEAR')) - INTERVAL '1 SEC')::TIMESTAMP as end_time,
    extract('epoch' from (date_trunc('YEAR', (CURRENT_DATE + INTERVAL '1 YEAR')) - INTERVAL '1 SEC')::TIMESTAMP)::bigint as end_epoch;
