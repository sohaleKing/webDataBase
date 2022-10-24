# Reflection8

### 1. Identify and describe a scenario in which there is a clear need to use a graph database (hopefully something other than a social network site, but just do that if you can think of nothing else).

my database from the first quiz is for a cosmetic clinique but I couldnt find a good reason to imagine that in graph databse so I am going to start a scenario not related to cosmetic but maybe by learning this, it would give me an idea to use graph to do something like semantic search or anti-fraud or digital asset managment, but at the moment I am going to do the example for a air (flight) control to make it more reasonable in using graph databases!

https://github.com/sohaleKing/webDataBase/tree/master/bDermaPlus_DB/reflection8

also the readME file as below:
https://github.com/sohaleKing/webDataBase/blob/master/bDermaPlus_DB/reflection8/readMe.md

Situational Awareness allows you to monitor environmental elements and events in real-time like in our case air traffic with respect to time or landing field, understand their meaning, and project their status in the future to make smarter air control decisions.

in our case the air traffice can monitor the flight and landing traffic, the plane status and locations, and proactively manage the landing and take off based on real-time data.

Situational Awareness analysis requires us to track a vast amount of data points describing the situation – flight status, air port status even the weather situation like probability of rain, and many other details, and their relation to the desired outcome to determine the best and most safe possible air traffic controlling!

Let's walk through how data is stored in a graph database. Let's say you want to store air travel information.

Each airport would be represented by a node, and information about the airports would be stored in the nodes' properties. For example, you could create a node for treaudu Airport in montreal Canada with properties such as airport_code: YULand country: Canada.

A flight between two airports—that is, the relationship between two nodes—is represented by an edge. The edge's properties contain information about the flight.for example, you could create an edge between the nodes for trudeau Airport and Helsinki-Vantaa  Airport. The edge could have properties like airplane: AC 874 and airline: AirCanada.

A node represents trudeau Airport, with its properties listed. An edge represents a flight from YUL Airport to Helsinki-Vantaa Airport, with properties for airplane and airline.

## 2. Create a text file with example data that represents a property graph, either in CSV or JSON, with at least three vertices and at least two edges.

look at the example below

image 2-1> the idea is each of these columns become an attribute(property) for each airport so we can have things like lantitute or size of the airport or any kind of other information

image2-2> you can see the flight number, airline, departure airport, arrival airport, and the airplane capacity

we need these file 3 times! to create each flight and to create the each of relationships to the flight!

## 3. Populate a Neo4j database with that file, preferably using the command-line shell utility.

I installed the Neo4j Desktop 1.5.0 and started to add csv files and oped neo4j browser to enter queries to get the result

## 4. Write at least one relevant query to access the newly created database.

load csv with headers from "https://github.com/sohaleKing/webDataBase/blob/master/bDermaPlus_DB/reflection8/neo4j-airport.csv" as airports create (a1:Airport{code:airports.code,city:airports.city,country:airports.country})

- I tell neo4j that file has header, then give location, and tell as aiports to make a new object and construct the basic syntax base on that object and here also we have three property! take airport object(csv now its an object) and look at the airport code and iterate in entire file so it would be 7 rows in our case and one node for each of this rows so 7 nodes each 3 properties so 21 properties in total!
  and to see the result

MATCH (n:Airport) RETURN n LIMIT 25

load csv with headers from "https://github.com/sohaleKing/webDataBase/blob/master/bDermaPlus_DB/reflection8/neo4j-flight.csv" as flights create (n:Flight {number: flights.flight, airline:flights.airline,capacity:flights.capacity})

match(n) return(n)

## 5. Read through the Drivers & Language Guides section in Neo4j documentation and pick a programming language to use in the next step; discuss the reasons behind your choice.

I choosed the javascript since I know it in frontend and backend plus this course is intented to be a javascript fullstack developer
The Neo4j JavaScript driver is officially supported by Neo4j and connects to the database using the binary protocol. It aims to be minimal, while being idiomatic to JavaScript, allowing you to subscribe to a stream of responses, errors and completion events. 
nodeJS would be a good server for this

https://neo4j.com/developer/javascript/

## 6. Implement one or more of the queries from the fourth step through the language you chose in the fifth step.

see this repo for the connection between neo4j and nodeJs
https://github.com/sohaleKing/webDataBase/tree/master/bDermaPlus_DB/reflection8/nodejs-neo4j
the connection snippet would be like this

```js
const express = require("express");
const neo4j = require("neo4j-driver");

const driver = neo4j.driver(
  "bolt://localhost:7687",
  neo4j.auth.basic("neo4j", "LoveGod2021*")
);

async function init() {
  const app = express();

  app.get("/airport", async (req, res) => {
    const session = driver.session();
    const result = await session.run(`MATCH (n:Airport) RETURN n LIMIT 25`);
    res.json(result);

    await session.close();
  });

  app.get("/flight", async (req, res) => {
    const session = driver.session();
    const result = await session.run(`MATCH (n:Flight) RETURN n LIMIT 25`);
    res.json(result);

    await session.close();
  });

  app.listen(8181);
  console.log("listen to port 8181");
}
init();
```

## 7. Try to think of a real-world scenario in which it would not make sense to limit to one kind of a database (relational, noSQL, or graph) but instead two or more kinds are needed for an efficient implementation.Describe the scenario you thought of or, if you could not think of one, explain why you think it is unlikely to be useful to combine two or more kinds of databases.

SQL databases use structured query language and have a predefined schema. they are vertically scalable, they are also table-based and they are better for multi-row transactions
NoSQL databases have dynamic schemas for unstructured data. they are horizontally scalable. they are also document, key-value, graph, or wide-column stores. NoSQL is better for unstructured data like documents or JSON.

A graph database is composed of two elements: a node and a relationship.

Each node represents an entity (a person, place, thing, category or other piece of data), and each relationship represents how two nodes are associated. This general-purpose structure allows you to model all kinds of scenarios – from a system of roads, to a network of devices, to a population’s medical history or anything else defined by relationships.

Performance

For intensive data relationship handling, graph databases improve performance by several orders of magnitude. With traditional databases, relationship queries will come to a grinding halt as the number and depth of relationships increase. In contrast, graph database performance stays constant even as your data grows year over year.

Flexibility

With graph databases, IT and data architect teams move at the speed of business because the structure and schema of a graph model flexes as applications and industries change. Rather than exhaustively modeling a domain ahead of time, data teams can add to the existing graph structure without endangering current functionality.

Agility

Developing with graph databases aligns perfectly with today’s agile, test-driven development practices, allowing your graph database to evolve in step with the rest of the application and any changing business requirements. Modern graph databases are equipped for frictionless development and graceful systems maintenance.

## 8. Pick a job-posting website (like LinkedIn or Indeed, for example) and search for jobs that require database skills. Visualize in a chart of your choice the popularity of the different database technologies among the results.

I choosed indeed since the salray usually not been mentioned in linkedIn but I believe linkedIn is much better for job networking
the DBA like database administrator in canada has a average salary for 76k CAD per year, which is not bad to start, that can go high to 120k for seniors with good experiences, but something is very remarcable is there are so many jobs available for them also since the big data, BA, BI also are related to database concept so it would be alternative opprtunities for the DBAs! the SQL database seems to be more popular than others

## 9. Do you perceive any differences in the salary range (when indicated) for the positions you examined in step 8, depending on which database technologies are requested? If salaries are rarely indicated, why do you think that is?

the SQL is base! meaning you can not be a graph database administrator with no knowledge of SQL! SQL developers they have a good range of salary from 74k to 120k CAD per year! in US that is even more!

the average salary of noSQL is higher than SQL database, of course the leverl and seniority talks first
graph databse in not very popular but might have a very high salary with high ranked company like facebook or twiter!

https://ca.indeed.com/career/database-developer/salaries
