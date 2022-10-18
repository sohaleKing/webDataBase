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
   the C programming language because it’s the oldest and most widely used of the three, 1970s
   C is still a low-level programming language, which performs almost as efficiently as assembly code. It provides base-level access to memory, and it requires very little runtime support.
   Programmers still use it in operating systems, kernel-level software, hardware drivers, and applications that need to work with older code.

C++ was developed as an extension of the C programming language
C++ is considered an intermediate-level programming language, as it builds upon the low-level C language but has more advanced capabilities the goal to make C++ was to enhance C and add object-oriented programming capabilities without sacrificing speed or efficiency.

C# is a high-level, object-oriented programming language that is also built as an extension of C. It was developed by Microsoft and It’s based in the .NET framework, but its backbone is still clearly the C language.
C# compiles into byte-code, rather than machine code. That means it executes on a virtual computer that translates it into machine code on the fly. It adds garbage collection, uninitialized variable checking, bound checking, and type checking capabilities to the base C code.
C# typically sees use in internal or enterprise applications, rather than commercial software. It’s found in client and server development in the .NET framework.

5. Fortran
   Fortran is a computer programming language that is extensively used in numerical, scientific computing. While outwith the scientific community, it has a strong user base with scientific programmers, and is also used in organisations such as weather forecasters, financial trading, and in engineering simulations. Fortran programs can be highly optimised to run on high performance computers, and in general the language is suited to producing code where performance is important.

Fortran is a compiled language, or more specifically it is compiled ahead-of-time. In other words, you must perform a special step called compilation of your written code before you are able to run it on a computer. This is where Fortran differs to interpreted languages such as Python and R which run through an interpreter which executes the instructions directly, but at the cost of compute speed.

Fortran has a set of rules used to determine whether a program is valid and can be understood by the computer, a bit like a human language. The combination of keywords and characters that are used to form Fortran programs are usually referred to as the language’s syntax. Fortran programs begin with the PROGRAM keyword, followed, optionally, by a name for the program. The end of the program should also be marked by END PROGRAM.
this link would help to have an intro and tutorial to a basic fortan code:
https://ourcodingclub.github.io/tutorials/fortran-intro/

6. Cobol
   COBOL stands for Common Business Oriented Language. It is imperative, procedural, and object-oriented. A compiler is a computer program that takes other computer programs written in a high-level (source) language and coverts them into another program, machine code, which the computer can understand. COBOL takes data from a file or database, processes, and outputs it. In short: COBOL takes data in, computes it, and outputs it afterwards.
   Cobol is late 1950s! One source lists more than 29,010 companies as still using COBOL, about 0.8% market share. Another estimates that 200 billion lines of COBOL code are still active, and that 90% of Fortune 500 companies, most notably big finance, insurance companies, airlines and retail point-of-sale systems rely on COBOL.
   COBOL persists for many equally valid reasons. One is that nothing is as flexible or reliable as COBOL. Banks, for example, need complete accuracy. COBOL outperforms Java in that respect. Another is that many of biggest enterprises in the world use core applications written in COBOL, and intervention is too risky, or expensive. COBOL’s enduring usefulness in a constantly changing digital world provide the combination of continued innovation and reliability which are IT necessities.

## Finally, pick one of the programming languages discussed in this session as alternatives to NodeJS (or one of the three from the previous block of questions, if you really want to) and replicate functionality similar to the example code of Session 5 with that technology and the DBMS of your choice. Host your code on a public repository such as GitHub or similar, together with a setup script or instructions to install and configure the necessary components. Discuss the following three aspects of your experience.

7. What is the URL of the repository? Did you have any difficulties creating or populating
   it?
   https://github.com/sohaleKing/webDataBase/tree/master/bDermaPlus_DB/reflection6
   it was not easy qorking with other new technology in that short time! but lovely expreince and basic new knowledge paid back the effort!

```c#
var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello World"
);

app.MapGet("/customer", () =>
{
    string mycon = "Server =127.0.0.1; Port=3306; User=root; Password =LoveGod2021* ; Database =bdermaplus";
    using var connection = new MySql.Data.MySqlClient.MySqlConnection(mycon);
    connection.Open();
    using var command = new MySql.Data.MySqlClient.MySqlCommand("SELECT field FROM table;", connection);
    using var reader = command.ExecuteReader();
    while (reader.Read())
        Console.WriteLine(reader.GetString(0));
}
);

app.Run();
```

8. Was it easier in some way with the technologies you chose than with NodeJS and SQLite?
   Was anything about it harder? Please discuss what was different and how.
   NodeJs specially the SQLite are very easier for us since the intent of this course was more focus on 100% JavaScript stacks since beginning! less document to study! harder to setup specialy the visual studio needs lots of time and space to be install on local machine! new language new concept in matter of being object oriented compare to functional! C# is statically typed, while JavaScript is dynamically typed. we can easily change the type in result in javascript but C# is strongly typed. C# has LINQ, a powerful . NET component that adds native data querying capabilities, but JavaScript has separate libraries that can cover this functionality, one being Underscore. working with node package manager makes the life easier for the developer to install any dependency you want with no any setup! just npm install and package name and it would be available through your code! another thing is manipulating the DOM in Javascript is a lot easier since its a browser native language!

9. If you were to start over with yet another technology pair (programming language and
   DBMS), which ones would you pick and why? If you in fact experimented with several
   before choosing one, how did that go?

for the market needs and high demanding aspect I would go gor Java and also I believe although its completely different language but still close to JavaScript in matter on being symantec
also there are many good sources to study! python is also very common and its the choice of many developers
PHP is personaly the first language I started working as a job with but without the framworks like laravel its not a easy language and I still love the Javascript the most! JAVA is OOP and is most often used to build large enterprise-level applications. It is one of the oldest languages as well with multiple extraordinary features.
here are some JAVA feautures I searched to complete my answer above:

Object-Oriented Language — JAVA is specifically focused on object-oriented approaches. It means you cannot work without classes while using Java. OOP helps the programmers to write structured and well-organized code. The understanding and readability of code become easier through object-oriented programming.

Multi-Threaded — Java allows programmers to write code where multiple tasks can be executed simultaneously. It can be very helpful when you need to execute a program in less time by running different operations in parallel.

Secure — Java is considered a very secure programming language. Public encryption keys are used for authentication to make it safer for data-sensitive applications.
