CREATE SCHEMA wdi;

USE wdi;

-- drop table wdi_nuclear;

-- import table 1: nuclear electricity production
CREATE TABLE wdi_nuclear
(`Country Name` VARCHAR(100) NOT NULL,
`Country Code` VARCHAR(10),
`Indicator Name` VARCHAR(65),
`Indicator Code` VARCHAR(15),
`y1960` DOUBLE,`y1961` DOUBLE,`y1962` DOUBLE,`y1963` DOUBLE,`y1964` DOUBLE,
`y1965` DOUBLE,`y1966` DOUBLE,`y1967` DOUBLE,`y1968` DOUBLE,`y1969` DOUBLE,
`y1970` DOUBLE,`y1971` DOUBLE,`y1972` DOUBLE,`y1973` DOUBLE,`y1974` DOUBLE,
`y1975` DOUBLE,`y1976` DOUBLE,`y1977` DOUBLE,`y1978` DOUBLE,`y1979` DOUBLE,
`y1980` DOUBLE,`y1981` DOUBLE,`y1982` DOUBLE,`y1983` DOUBLE,`y1984` DOUBLE,
`y1985` DOUBLE,`y1986` DOUBLE,`y1987` DOUBLE,`y1988` DOUBLE,`y1989` DOUBLE,
`y1990` DOUBLE,`y1991` DOUBLE,`y1992` DOUBLE,`y1993` DOUBLE,`y1994` DOUBLE,
`y1995` DOUBLE,`y1996` DOUBLE,`y1997` DOUBLE,`y1998` DOUBLE,`y1999` DOUBLE,
`y2000` DOUBLE,`y2001` DOUBLE,`y2002` DOUBLE,`y2003` DOUBLE,`y2004` DOUBLE,
`y2005` DOUBLE,`y2006` DOUBLE,`y2007` DOUBLE,`y2008` DOUBLE,`y2009` DOUBLE,
`y2010` DOUBLE,`y2011` DOUBLE,`y2012` DOUBLE,`y2013` DOUBLE,`y2014` DOUBLE,
`y2015` DOUBLE,`y2016` DOUBLE,`y2017` DOUBLE,`y2018` DOUBLE,`y2019` DOUBLE,
`y2020` DOUBLE,`y2021` DOUBLE,
PRIMARY KEY(`Country Name`));

LOAD DATA INFILE '/tmp/API_EG.ELC.NUCL.ZS_DS2_en_csv_v2_4639709.csv'
INTO TABLE wdi_nuclear
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 5 LINES
(`Country Name`, `Country Code`, `Indicator Name`, `Indicator Code`,
 @y1960, @y1961, @y1962, @y1963, @y1964, @y1965, @y1966, @y1967, @y1968, @y1969,
 @y1970, @y1971, @y1972, @y1973, @y1974, @y1975, @y1976, @y1977, @y1978, @y1979,
 @y1980, @y1981, @y1982, @y1983, @y1984, @y1985, @y1986, @y1987, @y1988, @y1989,
 @y1990, @y1991, @y1992, @y1993, @y1994, @y1995, @y1996, @y1997, @y1998, @y1999,
 @y2000, @y2001, @y2002, @y2003, @y2004, @y2005, @y2006, @y2007, @y2008, @y2009,
 @y2010, @y2011, @y2012, @y2013, @y2014, @y2015, @y2016, @y2017, @y2018, @y2019,
 @y2020, @y2021
)
SET y1960 = CAST(IF(@y1960 = "", NULL, @y1960) AS DOUBLE)
   ,y1961 = CAST(IF(@y1961 = "", NULL, @y1961) AS DOUBLE)
   ,y1962 = CAST(IF(@y1962 = "", NULL, @y1962) AS DOUBLE)
   ,y1963 = CAST(IF(@y1963 = "", NULL, @y1963) AS DOUBLE)
   ,y1964 = CAST(IF(@y1964 = "", NULL, @y1964) AS DOUBLE)
   ,y1965 = CAST(IF(@y1965 = "", NULL, @y1965) AS DOUBLE)
   ,y1966 = CAST(IF(@y1966 = "", NULL, @y1966) AS DOUBLE)
   ,y1967 = CAST(IF(@y1967 = "", NULL, @y1967) AS DOUBLE)
   ,y1968 = CAST(IF(@y1968 = "", NULL, @y1968) AS DOUBLE)
   ,y1969 = CAST(IF(@y1969 = "", NULL, @y1969) AS DOUBLE)
   ,y1970 = CAST(IF(@y1970 = "", NULL, @y1970) AS DOUBLE)
   ,y1971 = CAST(IF(@y1971 = "", NULL, @y1971) AS DOUBLE)
   ,y1972 = CAST(IF(@y1972 = "", NULL, @y1972) AS DOUBLE)
   ,y1973 = CAST(IF(@y1973 = "", NULL, @y1973) AS DOUBLE)
   ,y1974 = CAST(IF(@y1974 = "", NULL, @y1974) AS DOUBLE)
   ,y1975 = CAST(IF(@y1975 = "", NULL, @y1975) AS DOUBLE)
   ,y1976 = CAST(IF(@y1976 = "", NULL, @y1976) AS DOUBLE)
   ,y1977 = CAST(IF(@y1977 = "", NULL, @y1977) AS DOUBLE)
   ,y1978 = CAST(IF(@y1978 = "", NULL, @y1978) AS DOUBLE)
   ,y1979 = CAST(IF(@y1979 = "", NULL, @y1979) AS DOUBLE)
   ,y1980 = CAST(IF(@y1980 = "", NULL, @y1980) AS DOUBLE)
   ,y1981 = CAST(IF(@y1981 = "", NULL, @y1981) AS DOUBLE)
   ,y1982 = CAST(IF(@y1982 = "", NULL, @y1982) AS DOUBLE)
   ,y1983 = CAST(IF(@y1983 = "", NULL, @y1983) AS DOUBLE)
   ,y1984 = CAST(IF(@y1984 = "", NULL, @y1984) AS DOUBLE)
   ,y1985 = CAST(IF(@y1985 = "", NULL, @y1985) AS DOUBLE)
   ,y1986 = CAST(IF(@y1986 = "", NULL, @y1986) AS DOUBLE)
   ,y1987 = CAST(IF(@y1987 = "", NULL, @y1987) AS DOUBLE)
   ,y1988 = CAST(IF(@y1988 = "", NULL, @y1988) AS DOUBLE)
   ,y1989 = CAST(IF(@y1989 = "", NULL, @y1989) AS DOUBLE)
   ,y1990 = CAST(IF(@y1990 = "", NULL, @y1990) AS DOUBLE)
   ,y1991 = CAST(IF(@y1991 = "", NULL, @y1991) AS DOUBLE)
   ,y1992 = CAST(IF(@y1992 = "", NULL, @y1992) AS DOUBLE)
   ,y1993 = CAST(IF(@y1993 = "", NULL, @y1993) AS DOUBLE)
   ,y1994 = CAST(IF(@y1994 = "", NULL, @y1994) AS DOUBLE)
   ,y1995 = CAST(IF(@y1995 = "", NULL, @y1995) AS DOUBLE)
   ,y1996 = CAST(IF(@y1996 = "", NULL, @y1996) AS DOUBLE)
   ,y1997 = CAST(IF(@y1997 = "", NULL, @y1997) AS DOUBLE)
   ,y1998 = CAST(IF(@y1998 = "", NULL, @y1998) AS DOUBLE)
   ,y1999 = CAST(IF(@y1999 = "", NULL, @y1999) AS DOUBLE)
   ,y2000 = CAST(IF(@y2000 = "", NULL, @y2000) AS DOUBLE)
   ,y2001 = CAST(IF(@y2001 = "", NULL, @y2001) AS DOUBLE)
   ,y2002 = CAST(IF(@y2002 = "", NULL, @y2002) AS DOUBLE)
   ,y2003 = CAST(IF(@y2003 = "", NULL, @y2003) AS DOUBLE)
   ,y2004 = CAST(IF(@y2004 = "", NULL, @y2004) AS DOUBLE)
   ,y2005 = CAST(IF(@y2005 = "", NULL, @y2005) AS DOUBLE)
   ,y2006 = CAST(IF(@y2006 = "", NULL, @y2006) AS DOUBLE)
   ,y2007 = CAST(IF(@y2007 = "", NULL, @y2007) AS DOUBLE)
   ,y2008 = CAST(IF(@y2008 = "", NULL, @y2008) AS DOUBLE)
   ,y2009 = CAST(IF(@y2009 = "", NULL, @y2009) AS DOUBLE)
   ,y2010 = CAST(IF(@y2010 = "", NULL, @y2010) AS DOUBLE)
   ,y2011 = CAST(IF(@y2011 = "", NULL, @y2011) AS DOUBLE)
   ,y2012 = CAST(IF(@y2012 = "", NULL, @y2012) AS DOUBLE)
   ,y2013 = CAST(IF(@y2013 = "", NULL, @y2013) AS DOUBLE)
   ,y2014 = CAST(IF(@y2014 = "", NULL, @y2014) AS DOUBLE)
   ,y2015 = CAST(IF(@y2015 = "", NULL, @y2015) AS DOUBLE)
   ,y2016 = CAST(IF(@y2016 = "", NULL, @y2016) AS DOUBLE)
   ,y1967 = CAST(IF(@y1967 = "", NULL, @y1967) AS DOUBLE)
   ,y2018 = CAST(IF(@y2018 = "", NULL, @y2018) AS DOUBLE)
   ,y2019 = CAST(IF(@y2019 = "", NULL, @y2019) AS DOUBLE)
   ,y2020 = CAST(IF(@y2020 = "", NULL, @y2020) AS DOUBLE)
   ,y2021 = CAST(IF(@y2021 = "", NULL, @y2021) AS DOUBLE)
;

-- check import was ok
SELECT * FROM wdi_nuclear;

-- import table 2: oil, gas and coal electricity production

-- drop table wdi_oilgascoal;

CREATE TABLE wdi_oilgascoal
(`Country Name` VARCHAR(100) NOT NULL,
`Country Code` VARCHAR(10),
`Indicator Name` VARCHAR(70),
`Indicator Code` VARCHAR(15),
`y1960` DOUBLE,`y1961` DOUBLE,`y1962` DOUBLE,`y1963` DOUBLE,`y1964` DOUBLE,
`y1965` DOUBLE,`y1966` DOUBLE,`y1967` DOUBLE,`y1968` DOUBLE,`y1969` DOUBLE,
`y1970` DOUBLE,`y1971` DOUBLE,`y1972` DOUBLE,`y1973` DOUBLE,`y1974` DOUBLE,
`y1975` DOUBLE,`y1976` DOUBLE,`y1977` DOUBLE,`y1978` DOUBLE,`y1979` DOUBLE,
`y1980` DOUBLE,`y1981` DOUBLE,`y1982` DOUBLE,`y1983` DOUBLE,`y1984` DOUBLE,
`y1985` DOUBLE,`y1986` DOUBLE,`y1987` DOUBLE,`y1988` DOUBLE,`y1989` DOUBLE,
`y1990` DOUBLE,`y1991` DOUBLE,`y1992` DOUBLE,`y1993` DOUBLE,`y1994` DOUBLE,
`y1995` DOUBLE,`y1996` DOUBLE,`y1997` DOUBLE,`y1998` DOUBLE,`y1999` DOUBLE,
`y2000` DOUBLE,`y2001` DOUBLE,`y2002` DOUBLE,`y2003` DOUBLE,`y2004` DOUBLE,
`y2005` DOUBLE,`y2006` DOUBLE,`y2007` DOUBLE,`y2008` DOUBLE,`y2009` DOUBLE,
`y2010` DOUBLE,`y2011` DOUBLE,`y2012` DOUBLE,`y2013` DOUBLE,`y2014` DOUBLE,
`y2015` DOUBLE,`y2016` DOUBLE,`y2017` DOUBLE,`y2018` DOUBLE,`y2019` DOUBLE,
`y2020` DOUBLE,`y2021` DOUBLE,
PRIMARY KEY(`Country Name`));

LOAD DATA INFILE '/tmp/API_EG.ELC.FOSL.ZS_DS2_en_csv_v2_4538179.csv'
INTO TABLE wdi_oilgascoal
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 5 LINES
(`Country Name`, `Country Code`, `Indicator Name`, `Indicator Code`,
 @y1960, @y1961, @y1962, @y1963, @y1964, @y1965, @y1966, @y1967, @y1968, @y1969,
 @y1970, @y1971, @y1972, @y1973, @y1974, @y1975, @y1976, @y1977, @y1978, @y1979,
 @y1980, @y1981, @y1982, @y1983, @y1984, @y1985, @y1986, @y1987, @y1988, @y1989,
 @y1990, @y1991, @y1992, @y1993, @y1994, @y1995, @y1996, @y1997, @y1998, @y1999,
 @y2000, @y2001, @y2002, @y2003, @y2004, @y2005, @y2006, @y2007, @y2008, @y2009,
 @y2010, @y2011, @y2012, @y2013, @y2014, @y2015, @y2016, @y2017, @y2018, @y2019,
 @y2020, @y2021
)
SET y1960 = CAST(IF(@y1960 = "", NULL, @y1960) AS DOUBLE)
   ,y1961 = CAST(IF(@y1961 = "", NULL, @y1961) AS DOUBLE)
   ,y1962 = CAST(IF(@y1962 = "", NULL, @y1962) AS DOUBLE)
   ,y1963 = CAST(IF(@y1963 = "", NULL, @y1963) AS DOUBLE)
   ,y1964 = CAST(IF(@y1964 = "", NULL, @y1964) AS DOUBLE)
   ,y1965 = CAST(IF(@y1965 = "", NULL, @y1965) AS DOUBLE)
   ,y1966 = CAST(IF(@y1966 = "", NULL, @y1966) AS DOUBLE)
   ,y1967 = CAST(IF(@y1967 = "", NULL, @y1967) AS DOUBLE)
   ,y1968 = CAST(IF(@y1968 = "", NULL, @y1968) AS DOUBLE)
   ,y1969 = CAST(IF(@y1969 = "", NULL, @y1969) AS DOUBLE)
   ,y1970 = CAST(IF(@y1970 = "", NULL, @y1970) AS DOUBLE)
   ,y1971 = CAST(IF(@y1971 = "", NULL, @y1971) AS DOUBLE)
   ,y1972 = CAST(IF(@y1972 = "", NULL, @y1972) AS DOUBLE)
   ,y1973 = CAST(IF(@y1973 = "", NULL, @y1973) AS DOUBLE)
   ,y1974 = CAST(IF(@y1974 = "", NULL, @y1974) AS DOUBLE)
   ,y1975 = CAST(IF(@y1975 = "", NULL, @y1975) AS DOUBLE)
   ,y1976 = CAST(IF(@y1976 = "", NULL, @y1976) AS DOUBLE)
   ,y1977 = CAST(IF(@y1977 = "", NULL, @y1977) AS DOUBLE)
   ,y1978 = CAST(IF(@y1978 = "", NULL, @y1978) AS DOUBLE)
   ,y1979 = CAST(IF(@y1979 = "", NULL, @y1979) AS DOUBLE)
   ,y1980 = CAST(IF(@y1980 = "", NULL, @y1980) AS DOUBLE)
   ,y1981 = CAST(IF(@y1981 = "", NULL, @y1981) AS DOUBLE)
   ,y1982 = CAST(IF(@y1982 = "", NULL, @y1982) AS DOUBLE)
   ,y1983 = CAST(IF(@y1983 = "", NULL, @y1983) AS DOUBLE)
   ,y1984 = CAST(IF(@y1984 = "", NULL, @y1984) AS DOUBLE)
   ,y1985 = CAST(IF(@y1985 = "", NULL, @y1985) AS DOUBLE)
   ,y1986 = CAST(IF(@y1986 = "", NULL, @y1986) AS DOUBLE)
   ,y1987 = CAST(IF(@y1987 = "", NULL, @y1987) AS DOUBLE)
   ,y1988 = CAST(IF(@y1988 = "", NULL, @y1988) AS DOUBLE)
   ,y1989 = CAST(IF(@y1989 = "", NULL, @y1989) AS DOUBLE)
   ,y1990 = CAST(IF(@y1990 = "", NULL, @y1990) AS DOUBLE)
   ,y1991 = CAST(IF(@y1991 = "", NULL, @y1991) AS DOUBLE)
   ,y1992 = CAST(IF(@y1992 = "", NULL, @y1992) AS DOUBLE)
   ,y1993 = CAST(IF(@y1993 = "", NULL, @y1993) AS DOUBLE)
   ,y1994 = CAST(IF(@y1994 = "", NULL, @y1994) AS DOUBLE)
   ,y1995 = CAST(IF(@y1995 = "", NULL, @y1995) AS DOUBLE)
   ,y1996 = CAST(IF(@y1996 = "", NULL, @y1996) AS DOUBLE)
   ,y1997 = CAST(IF(@y1997 = "", NULL, @y1997) AS DOUBLE)
   ,y1998 = CAST(IF(@y1998 = "", NULL, @y1998) AS DOUBLE)
   ,y1999 = CAST(IF(@y1999 = "", NULL, @y1999) AS DOUBLE)
   ,y2000 = CAST(IF(@y2000 = "", NULL, @y2000) AS DOUBLE)
   ,y2001 = CAST(IF(@y2001 = "", NULL, @y2001) AS DOUBLE)
   ,y2002 = CAST(IF(@y2002 = "", NULL, @y2002) AS DOUBLE)
   ,y2003 = CAST(IF(@y2003 = "", NULL, @y2003) AS DOUBLE)
   ,y2004 = CAST(IF(@y2004 = "", NULL, @y2004) AS DOUBLE)
   ,y2005 = CAST(IF(@y2005 = "", NULL, @y2005) AS DOUBLE)
   ,y2006 = CAST(IF(@y2006 = "", NULL, @y2006) AS DOUBLE)
   ,y2007 = CAST(IF(@y2007 = "", NULL, @y2007) AS DOUBLE)
   ,y2008 = CAST(IF(@y2008 = "", NULL, @y2008) AS DOUBLE)
   ,y2009 = CAST(IF(@y2009 = "", NULL, @y2009) AS DOUBLE)
   ,y2010 = CAST(IF(@y2010 = "", NULL, @y2010) AS DOUBLE)
   ,y2011 = CAST(IF(@y2011 = "", NULL, @y2011) AS DOUBLE)
   ,y2012 = CAST(IF(@y2012 = "", NULL, @y2012) AS DOUBLE)
   ,y2013 = CAST(IF(@y2013 = "", NULL, @y2013) AS DOUBLE)
   ,y2014 = CAST(IF(@y2014 = "", NULL, @y2014) AS DOUBLE)
   ,y2015 = CAST(IF(@y2015 = "", NULL, @y2015) AS DOUBLE)
   ,y2016 = CAST(IF(@y2016 = "", NULL, @y2016) AS DOUBLE)
   ,y1967 = CAST(IF(@y1967 = "", NULL, @y1967) AS DOUBLE)
   ,y2018 = CAST(IF(@y2018 = "", NULL, @y2018) AS DOUBLE)
   ,y2019 = CAST(IF(@y2019 = "", NULL, @y2019) AS DOUBLE)
   ,y2020 = CAST(IF(@y2020 = "", NULL, @y2020) AS DOUBLE)
   ,y2021 = CAST(IF(@y2021 = "", NULL, @y2021) AS DOUBLE)
;

-- check import was ok
SELECT * FROM wdi_oilgascoal;
