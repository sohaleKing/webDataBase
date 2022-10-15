# Reflection 5

### 1. Before starting to build the web service, estimate how many hours of work in total you think this assignment presents to you. Which parts do you expect to be time consuming and why?

thanks to the previous reflection making the database would be very quick!
https://github.com/sohaleKing/webDataBase/blob/master/bDermaPlus_DB/createSchema.sql
next step would be initialing a backend! 
and then connection the database (MySQL to Express) and a landing page and two end points 1- for showing (select) the customers 2- for adding (insert) a new customer
the connection to mySQL would be happening on port 8080 and the landing
page its just a json message
when the path would be localhost:8080/customer-list would show the select as a json object and when end point localhost:8080/add-new-customer being called an HTML form apprears which on the action would call an endpoint to insert the data and redirect to the customer-list after insert!
the most time consuming part would be matching the form input id with feilds data from the body chunk parsing! concading them to a string and use it on insert sql script! 
see the final code result in this repo:
https://github.com/sohaleKing/webDataBase/tree/master/bDermaPlus_DB/reflection5
also as another option to check the answers please see the readMe.md file as well!

### 2. Which operating system (and which version) did you choose for these tasks and why? Are you using it virtualized, on a remote machine, or locally installed?

using windows 10 home edition! since thats my home operating system when the MySQL server workbench 8 and the server community is already installed and ready to be connected! its locally installed and we should connect to database on the port 3306 and the localhost with root user!
windows its easy to use and very user friendly! on previous reflection I tried to practice different method of installation! here my focus was on making a working application, so a good reliable and easy to use operating system like windows is a wise chose!

### 3. Which DBMS did you choose and why?

MySQL workbench 8.0 serverVersion 8.0.30 (64x)

- MySQL is a Relational Database Management Systemwhich means that it stores and presents data in tabular form, organized in rows and columns.
- MySQL is available for free to download and use from the official site of MySQL.
- MySQL is compatible with  Windows 10 home edition
- MySQL provides the facility to run on local network.
- MySQL is simple and easy to use
- MySQL is scalable and capable of handling more than 50 million rows. This is way too enough to handle my case
- MySQL allows transactions to be rolled back.
- MySQL is very flexible as it supports a large number of embedded applications.

### 4. Which kind of a web server (NodeJS or something else) did you set up and on which port? Why did you make those choices? Did you try any other ports first that turned out to be unavailable? What errors did you encounter, if any?

I used nodeJs with node pacakge manager of 8.9.0 and node version v14.15.5 which is a safe reliable version (not beta)
I used express to make it easier which listens to port 8080 and has a nodemon as a webpack to make sure everytime a change happens server reloads automatically right-away
8080 its something that I know I dont have anything already running on my machine sine usually the default port are 3xxx or 4xxx and 8080 its just a rare number to select and more garantee to be safe! I tried once and it worked with no problem and was available to use!

here is what I have on my code:

`app.listen(PORT.BACKEND, () => { console.log("listening on PORT " + PORT.BACKEND); });`

and here is my console log! (terminal)
listening on PORT 8080

for the database I choose the port 3306 which is mySQL default and to make it easier in coding I put them as an object keys and values

`const PORT = { BACKEND: 8080, DATABASE: 3306, }`

by using these port I can access to localhost in two different box and each box of connection is safe and no error as long as I respect the model as below:
1- port 8080 to connect the nodeJS express to browser
2- port 3306 to connect to database!
so no error when there is no same number

### 5. What fields does your form include? How do they map with the table(s) of your database?

the same as my database attributes I have input in my form 
please see the image 1 (First Name - Last Name - Email - Contact Number - RAMQ Number - Age - Gender - Address - Status - VIP Member) which are named with name attributes as ( first_name, last_name, email, telephone, ramq_number, age, gender, address, status, is_vip) and finally a submit button in form lead to the post method on the path "/insert-data" in form "action" attribute
on the server.js when you make the chunck.toString from the request body you first assign the fields.nameAttribute (exp: let first_name = fields.first_name) then use these variable inside your query

### 6. Do you offer any filtering options to view just some of the database entries? When does it make more sense to filter at the back end upon generating the response instead of sending all of it to the front end and using CSS/HTML/JavaScript to choose what to view and how?

I have an endpoint to see all the entries (select \*) as customer-list but it so convient to let the user to filter example by status! or only sho the VIP or lets say gender! in my case I choosed the  filter to show the customers in montreal! the result without defining column matching a specific value there would be a select all like this:

`"SELECT * FROM customer WHERE address='Montreal'"`

or even better we can filter them by cases:
`"SELECT first_name, email, CASE WHEN address='montreal' THEN 'home-town' WHEN address='laval' THEN 'north-shore' ELSE 'outside-QC' END AS 'provice' FROM customer"`,

### 7. Are you using any validation of the user input at the front end or at the back end? Should you maybe use more validation in a real-world setting than you do now?

using validation in front can not be strong since any hacker can change this easy by console log and modify the value before sending! imaging a hacker is using a postman or insomnia to send the request not even our front end! the second reason is if any changes in future happen on front by a new developer a validation might get ignor by mistake
for that reason its all better to do these kind of validation on request and backend side! where we can control the real validation! a common frontend validation is using regex not letting the hacker to do any remote code execution or databse injection or make sure the input is not empty or matches the type (ex email) but these are not safe since a tech savi user can modify the front input easy!
in real world validation is necesserly since the secuirty and customer privacy and confidentiality is very important and we need to make sure our backend is not exploitable and always checking the common CVE vulnerability!
we used a dependecy called  "express-validator": "^6.14.2",

and inside our endpoint function we check the validation: see the image 7-1

### 8. Read about SQL injection attacks, unless you are already familiar with the concept. Is what you built vulnerable to that? What could you do to protect it better? Test and discuss.

yes SQL injection is always dangerous! lets go back to our example! imagine we are filtering the data inside the page just by showing the firstname and lastname and email and customer address or telephone is confidential
if we dont control the input inside the search by example customer id the "smart" input like whatever OR 1=1 can be dangerious why? since 1=1 is always true so the query will return ALL rows from the CUSTOMER table, if it was a user and we dont control it on username field it might be dangerous to show the cridentials like password! or lets say the hacker put this 
"or""=" for the username and password
so the SQL is valid and will return all the rows from the user since OR ""="" is always true
result would be 
`SELECT * FROM Users WHERE Name ="" or ""="" AND Pass ="" or ""=""`
lets test this example on our backend and diable the validation dependency to see the result!

### 9. How well did the time estimate you made for the first question hold? Were any tasks harder or easier than you expected?

the checking for validation on backend sql injection was harder than I though! I passed the security master liecence at my current career but about database injection there were so many things to learn, backend validation document on express-validation api was very informative
https://express-validator.github.io/docs/check-api.html
