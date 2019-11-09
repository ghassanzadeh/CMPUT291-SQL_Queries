build:
	sqlite3   a2.db   <a2-tables.sql
	sqlite3   a2.db   <a2-data.sql

run:
	sqlite3   a2.db   <a2-queries.sql >a2-script.txt