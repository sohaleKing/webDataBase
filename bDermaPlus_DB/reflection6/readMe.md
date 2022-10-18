## Look into the following in the context of developing and operating web services that may access one or more databases. Provide, in your own words, a definition for each, together with a brief discussion of what you perceive its relevance to be to our present area of study. Please clearly cite all sources.

1. CGI

   1. this is what I know about CGI: CGI is a standard to connect browser to the backend
   2. this is what I found after studing and searching:
      The Common Gateway Interface (CGI) specification was introduced to enable and standardize the interface between Web servers and external programs. The CGI is a relatively simple, platform and language independent, industry-standard interface for Web application development. Programs that implement the CGI standard are commonly called CGI programs.

   The purpose of CGI is to extend the capability of an HTTP server by providing framework in which an HTTP server can interface with a program that is specified on a URL. the interface describes how the program is started by the HTTP server and how parameters for the program are passed using a combination of standard-input and environment variables. It also describes how output information (such as HTML elements) are passed back to the HTTP server using standard output. Thus, in its simplest form, a CGI program can be defined as a program that:

   - Can be called as an executable program and run as a child process of the HTTP server.
   - Is able to read from the standard input.
   - Is able to access environment variables.
   - Is able to write to the standard output.
   - Is able to access command- line arguments passed to the program.
     source: https://www.ibm.com/docs/en/i/7.4?topic=functionality-cgi

2. ODBC

   - this is what I know about ODBC is a standard to connect a program to the database
   - this is what I found after studing and searching about ODBC
     Overview of Open Database Connectivity is an industry standard application program interface (API) that provides a solution to a common problem—how to write programs that access a Database Management System (DBMS) without making them dependent on specific DBMS designs. ODBC provides API access to SQL-accessible databases, allowing application programs to use SQL to access data from many kinds of sources. The independence of the access method from the original design of the database means that developers can design and produce a single version of an application that can work with, for example, Oracle or Sybase data, without requiring a separate version for each DBMS. Users simply add database drivers to link the application to their choice of DBMS.

An ODBC driver provides an application program with standard and uniform SQL access to a DBMS database. An ODBC driver allows the designers and users of the application program to ignore the SQL differences between various DBMS systems.
source: https://www.ibm.com/docs/en/personal-communications/13.0?topic=utility-overview-open-database-connectivity-odbc

3. Rollback (instead of commit)
   In transaction systems, commit and rollback refers to the set of actions used to ensure that an application program either makes all changes to the resources represented by a single unit of recovery (UR), or makes no changes at all. The two-phase commit protocol provides commit and rollback. It verifies that either all changes or no changes are applied even if one of the elements (like the application, the system, or the resource manager) fails. The protocol allows for restart and recovery processing to take place after system or subsystem failure.
   source: https://www.ibm.com/docs/en/zos-basic-skills?topic=mainframe-what-is-commit-rollback

   ROLLBACK is a transactional control language in SQL. It lets a user undo those transactions that aren’t saved yet in the database. One can make use of this command if they wish to undo any changes or alterations since the execution of the last COMMIT
   The COMMIT statement lets a user save any changes or alterations on the current transaction. These changes then remain permanent while ROLLBACK is reverse, its undo! and should have happen after commit! meaning you can not do rollback when there was no commit!
   note the rollback its just removing all the changes after the commit! it doesnt undo the commit, Once you use the COMMIT command to (completely) execute the current transaction, then it cannot undo and get back to its previous state in any way. commit its happening If one executes all the statements successfully with no error, then the COMMIT command will finally save the current state attained there.but the rollback after a transaction is unsuccessful due to abortion, incorrect execution, power failure, or system failure we can easily undo these changes with the ROLLBACK command.

## Next, look into the following additional programming languages that are also used with database technologies, sometimes even at back ends of web services. In your response, discuss why you think they were not highlighted as interesting options in the course outline. Also, identify some feasible options to connect to a DBMS with them.

4. C, C++, C##
