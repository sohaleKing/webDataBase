# Reflection8

### 1. Identify and describe a scenario in which there is a clear need to use a graph database (hopefully something other than a social network site, but just do that if you can think of nothing else).

my database from the first quiz is for a cosmetic clinique but I couldnt find a good reason to imagine that in graph databse so I am going to start a scenario not related to cosmetic but maybe by learning this, it would give me an idea to use graph to do something like semantic search or anti-fraud or digital asset managment, but at the moment I am going to do the example for a air (flight) control to make it more reasonable in using graph databases!

https://github.com/sohaleKing/webDataBase/tree/master/bDermaPlus_DB/reflection8

Situational Awareness allows you to monitor environmental elements and events in real-time like in our case air traffic with respect to time or landing field, understand their meaning, and project their status in the future to make smarter air control decisions.

in our case the air traffice can monitor the flight and landing traffic, the plane status and locations, and proactively manage the landing and take off based on real-time data.

Situational Awareness analysis requires us to track a vast amount of data points describing the situation – flight status, air port status even the weather situation like probability of rain, and many other details, and their relation to the desired outcome to determine the best and most safe possible air traffic controlling!

Let's walk through how data is stored in a graph database. Let's say you want to store air travel information.

Each airport would be represented by a node, and information about the airports would be stored in the nodes' properties. For example, you could create a node for treaudu Airport in montreal Canada with properties such as airport_code: YULand country: Canada.

A flight between two airports—that is, the relationship between two nodes—is represented by an edge. The edge's properties contain information about the flight.for example, you could create an edge between the nodes for trudeau Airport and Helsinki-Vantaa  Airport. The edge could have properties like airplane: AC 874 and airline: AirCanada.

A node represents trudeau Airport, with its properties listed. An edge represents a flight from YUL Airport to Helsinki-Vantaa Airport, with properties for airplane and airline.

## 2. Create a text file with example data that represents a property graph, either in CSV or JSON, with at least three vertices and at least two edges.

## 3. Populate a Neo4j database with that file, preferably using the command-line shell utility.

## 4. Write at least one relevant query to access the newly created database.

## 5. Read through the Drivers & Language Guides section in Neo4j documentation and pick a programming language to use in the next step; discuss the reasons behind your choice.

## 6. Implement one or more of the queries from the fourth step through the language you chose in the fifth step.

## 7. Try to think of a real-world scenario in which it would not make sense to limit to one kind of a database (relational, noSQL, or graph) but instead two or more kinds are needed for an efficient implementation.Describe the scenario you thought of or, if you could not think of one, explain why you think it is unlikely to be useful to combine two or more kinds of databases.

## 8. Pick a job-posting website (like LinkedIn or Indeed, for example) and search for jobs that require database skills. Visualize in a chart of your choice the popularity of the different database technologies among the results.

## 9. Do you perceive any differences in the salary range (when indicated) for the positions you examined in step 8, depending on which database technologies are requested? If salaries are rarely indicated, why do you think that is?
