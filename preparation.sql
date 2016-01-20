-- create language (if needed)
create language plpython3u;

-- create table with data
create table test_table as
select gs.id,
       case ceil(random()*5)
       when 1 then 'Red'
       when 2 then 'Green'
       when 3 then 'Blue'
       when 4 then 'Black'
       when 5 then 'White' end as color,
       ceil(random()*100) as qty
  from generate_series(1, 50000000) gs(id);
-- completed in 17m 39s 436ms

-- add primary key
alter table test_table add constraint test_table_pkey primary key (id);
-- completed in 12m 4s 195ms
