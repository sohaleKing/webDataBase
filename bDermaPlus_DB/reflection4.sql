/* Question1: SQLite
64-bit DLL (x64) for SQLite version 3.39.3
windows 10 home edition by a A bundle of command-line tools for managing SQLite database files, including the command-line shell program, the sqldiff.exe program, and the sqlite3_analyzer.exe program 
using the command prompt (CMD) and navigate to where you download and extarcted the sqlite3
then create the database first:
sqlite3 quiz4.db
result: (SQLite version 3.39.3 2022-09-05 11:02:23)
sqlite> create table classmate (firstName, lastName, email);
sqlite> insert into classmate values('konstantine', 'king', 'konstantine@gmail.com');
sqlite> insert into classmate values('mercy', 'claudia',' mercy.claudia@mcgill.ca');
sqlite> select * from classmate;
Result: 
konstantine|king|konstantine@gmail.com
mercy|claudia| mercy.claudia@mcgill.ca */
create table classmate (firstName, lastName, email);
insert into classmate values('konstantine', 'king', 'konstantine@gmail.com');
insert into classmate values('mercy', 'claudia',' mercy.claudia@mcgill.ca');
select * from classmate;
------------------------------------------
/*Question2: MySQL
windows 10 home edition by msi file
mySQL workbench 8.0
serverVersion=8.0.30

steps:
for the server: mySQL installer-community (1.6) let you to install the workbench and the server 
then you choose the type and netwroking server configuration (example connectivity TCP/IP port 3306(default) 
-Authentication- account Role and windows services and applying this configurations */
------------------------------------------
/* MariaDB
https://mariadb.com/kb/en/installation-issues-on-windows/
due to problem I got with installing the mariaDb I had to install the visual studio for C++ to get 
some required dll and then the only compatibale version wsas 5.2.5 which was stable and compatibale by windows 

there is a problem with this installer package 
(I have tried many other new version and there were all the same thats why I switched to old version 5.2.5)
*/

------------------------------------------
/* Question4: PostgresSQL:
Postgresql-14.5-1 windows x64
you should select the components :
PostgresSQL server
pgAdmin4 (graphocal interface)
stack Builder (download additional tools and drivers and application)
CLI tools
then you should define the password for you superuser and default port 5432 and a cluster(local)
then when the stack bubilder 4.2.1 was running I selected rge PostqreSQL v10.22.1
when its installed you are able to user pgAdmin4
we used the fixed port of 5050! */
CREATE DATABASE "quiz4question4.db"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Canada.1252'
    LC_CTYPE = 'English_Canada.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;