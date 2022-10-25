# Reflection 10

### 1. Investigate the necessary steps to set up a web service that uses at least one database on Microsoft Azure. If your McGill account has free credits available, you can set up a small one to test it out; if you do not have free credits through your McGill account or do not wish to try this out in practice, you can simply read tutorials and documentation to figure it out.

for checking all the answer you can refer to this repo:
https://github.com/sohaleKing/webDataBase/tree/master/bDermaPlus_DB/reflection10
The Azure cloud platform is more than 200 products and cloud services designed to help you bring new solutions to life—to solve today’s challenges and create the future. Build, run, and manage applications across multiple clouds, on-premises, and at the edge, with the tools and frameworks of your choice.

I rather to keep my account balance for some serious project! so I am sharing with you the screen shots or try to find the free stuff there first!

these are the options when we get the new account there:
1- create a resource
2- using home to view top Azure services, common tasks, used resources and online traing and azure blog
3- Dashboard to display exatly what you want, resources, services, alerts and tutorials
4-All services (browse the varity)
5-favorites
6-search to quickly find resources you are lokking for
7-directory and subscriptions to be able to switch between directories or use global subscription filter to filter resources in portal
8-notification
9-help and support
10- account information
\*\* to get the credit you need to go to "ACCESS STUDENT BENEFITS"
I installed the SQL server 2019 standard
also created an empty SQL database 
these are the steps:

1. create the SQL database server 
   need to provide the server name
   location for your server (my case was EAST US)
   and define the authentication method! I selected both: SQL and Azure AD authentication
   when there is SQL authentication means you need to put username password! 
   2- create SQL Database
   database name
   database server from step before
    choose if you want to use SQL elastic pool
   working environemnt (production or development)
   3- defining the computer and storage (where the price would be defined base on your selection)

### 2. Investigate the necessary steps to set up a web service that uses at least one database on Amazon Web Services. You are not required in any way to sign up to try it out, but you may do so if you wish; working with open-access guides and tutorials is perfectly sufficient for the purposes of this assessment.

you can have a simple databse with no cost there but of course it would be small one! the defrault database for SQL server is Amazon RDS which I am going to share with you the screen shots and steps

- first thing to do of course is creating an AWS account 
  there are two type of account there
  1- root user : Account owner that performs tasks requiring unrestricted access. 
  2- IAM user: User within an account that performs daily tasks 
  we go for the more simple one here
  I had used these service before so I had to recover my old user

Steps:

Create a new AWS account
Secure the root user
Create an IAM user to use in the account
Set up the AWS Command Line Interface (CLI)
Set up an AWS Cloud9 environment

To setup an account, we need to enter the credit card details, so I stopped my registration.

### 3. Investigate the necessary steps to set up a web service that uses at least one database on Google Cloud Platform. You are not required in any way to sign up to try it out, but you may do so if you wish; working with open-access guides and tutorials is perfectly sufficient for the purposes of this assessment.

I have used the google cloud specially for google map API and other file server features! 
on the left menu there is an option for SQL but here I had also activate my account!

after activating my account we can create a cloud SQL instance - if it exist any we can migrate the data there!
there are 3 option to choose

PostgreSQL
 MySQL
SQL server

but in order to create an instance you have to enable the compute engine API first

Compute Engine - Secure and customizable compute service that lets you create and run virtual machines on Google’s infrastructure.

it seems the New customers get $300 in free credits to spend on Google Cloud. All customers get a general purpose machine (e2-micro instance) per month for free, not charged against your credits. I am not a new customer unfortunatly! 
these are the steps I found on tutorial:

Create static website on Google Cloud
Point your domain to GCS
Create bucket, upload and share the files using access control

To create a bucket:



Open cloud storage browser in the Google cloud platform console.
Click on ‘Create bucket’ to open the bucket creation form.
Enter your bucket information and click Continue to complete each step.
The Name of your bucket.
The storage class and location for your bucket.
The access control model for your bucket.
Click on Create.
If it is successful, it will take you to the bucket’s page where you see the text that ‘there are no objects in this bucket’.
Set up index page suffix and error page

Test the website.

### 4. How would you compute the projected cost of hosting a web service on the cloud? What tools do the provides offer for this purpose? What information is needed to calculate a cost projection?

its all about how you want the virtual machine, your docker or in the other hand how you want the computer get setup for you 
we need to calculate them by various tools, but of course you need to know the number of your instances (how many service- hoqw many SQL databses) storage limit or capacity - backup or replication storage, cpu power (number of cpu and cores) availability and consistency of server- even how many servers you need - level of redundancy and data request- data transfer- security and firwall services - data retrival - data lake and the way you need to provision your cluster! all are important to calculate the price

### 5. Carry out a small exercise to estimate the cost for hosting a web service (an imaginary one is fine, just briefly explain what it is like), explaining your choices for the amount of computation involved (number of users, type of transactions, etc.). If you fear that your estimate is a bad one, please discuss what makes it difficult for you to estimate this better. If you think that your estimate is precise, please discuss why you are confident in it.

estimation is not easy specially in matter of if you do it for the customer and you need to know the exact amount, imagine you are going to bill your customer and he/she asked you to give him.her an exact estimation! but thanks to the cloud calculation system most of them already can calculate the price before procedding! as I mentioned on previous question we need to know what exactly we wants (number of instances, cpu, server , .... ) first then we would be able to calculate! 
I am going to imagine a scenario and see what microsoft Azure would bill me for this and share the screen shot with you
these are you need to select
1- computer tier

2- service tier

3- vCores

4- Data max size

5- is the database zone redundant?

so the price came up to 1109.35 CAD per month!

### 6. With your (newly gained) insight on how cloud services are set up and paid for, what do you consider to be the main advantages and disadvantages of hosting a web service and/or its databases on cloud platforms instead of local servers?

Cloud databases offer many benefits

Improved agility and innovation. Cloud databases can be set up and decommissioned very quickly—making testing, validating, and operationalizing new business ideas easy and fast.
Faster time to market
Reduced risks
Lower costs.

Disadvantages of cloud DB

data loss or theft.
data leakage.
account or service hijacking.
insecure interfaces and APIs.
denial of service attacks.
technology vulnerabilities, especially on shared environments



Local Server pros and cons

Pros



Up/download speed
System set-up control
Security

Cons

Installation of expensive hardware
Will need maintenance

In my opinion I would prefer cloud database than local server.

https://www.securestorageservices.co.uk/article/11/pros-and-cons-of-cloud-storage

### 7.8.9

are personal so I wont share the answers here since the repo is a public access!
