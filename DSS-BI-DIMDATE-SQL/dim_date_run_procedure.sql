
CALL fill_date_dimension('2013-12-31','2023-12-31');
OPTIMIZE TABLE time_dimension; -- đánh index

SELECT * FROM dim_tables.time_dimension;