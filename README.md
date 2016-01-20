# PostgreSQL sample async scan
Sample async scan on PostgreSQL database using Python & Psycopg.

# Requirements
- PostgreSQL 9.4 or higher
- PostgreSQL packages: contrib, plpython, plpython3
- Python 3.0 or higher
- Python packages: psycopg2

Debian packages install example command (except PostgreSQL installing):
- apt-get install postgresql-contrib-9.4 postgresql-plpython-9.4 postgresql-plpython3-9.4 python3.4 python3-psycopg2

# Using
1. execute preparation.sql — creates test structure
2. execute function.sql — creates function
3. open tests.sql, manually execute queries (check user password) and compare execution time
