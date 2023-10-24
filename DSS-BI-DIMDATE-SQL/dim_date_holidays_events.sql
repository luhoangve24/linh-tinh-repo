UPDATE time_dimension
SET holiday_flag = 't', event = CASE
	WHEN day = 1 AND month = 1 THEN 'Tết Dương lịch'
    WHEN (day > 21 AND month = 1) OR (day < 22 AND month = 2) THEN 'Tết Nguyên đán "có thể"'
    WHEN day = 30 AND month = 4 THEN 'Giải phóng Miền Nam, Thống nhất Đất nước'
    WHEN day = 1 AND month = 5 THEN 'Quốc tế Lao Động'
    WHEN day = 2 AND month = 9 THEN 'Quốc khánh Việt Nam'
    ELSE NULL
END
WHERE year BETWEEN 2013 AND 2023;
