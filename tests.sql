-- get data using one stream
select tt.color,
       sum(tt.qty) as qty
  from test_table tt
 group by tt.color
 order by qty desc;
-- execution: 24s 648ms

-- get data using more than one stream
select tt.color,
       tt.qty
  from test_table_sample_async_scan(np_streams_qty := 3 /* streams quantity */,
                                    tp_password := '123456' /* your password, used in connection string for psycopg2 */
                                    ) tt(color text, qty integer);
-- execution: 8s 285ms
