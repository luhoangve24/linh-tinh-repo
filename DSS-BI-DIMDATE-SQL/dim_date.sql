DROP TABLE IF EXISTS time_dimension;
CREATE TABLE time_dimension (
        id                      INTEGER PRIMARY KEY,  -- year*10000+month*100+day, Surrogate Key
        date                    DATE NOT NULL, -- 2002-04-02 00:00:00
        day                     INTEGER NOT NULL, -- 1 to 31
        month                   INTEGER NOT NULL, -- 1 to 12
        year                    INTEGER NOT NULL, -- 2023
        quarter                 INTEGER NOT NULL, -- 1 to 4
        week                    INTEGER NOT NULL, -- 1 to 52/53
        day_name                VARCHAR(9) NOT NULL, -- 'Monday', 'Tuesday'...
        month_name              VARCHAR(9) NOT NULL, -- 'January', 'February'...
        holiday_flag            CHAR(1) DEFAULT 'f',
        weekend_flag            CHAR(1) DEFAULT 'f',
        event                   VARCHAR(50)
);