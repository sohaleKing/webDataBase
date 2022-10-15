# Reflection 7

### 1.What do we gain when we use JSON instead of CSV to represent data in terms of flexibility and efficiency? Think, investigate, and speculate.

so these are what I think:
json is easy for the browser to read since its the browser native! json its easy to edit, imagine you are going to add a new column(attribute) to your table here its just editing the json file and adding a new field and value, its a lot easier and flexible to work with and with the browser engine v8 language which is javascript is very easy to strigyfy and change it to string from an object or vise versa! there would be amazing in case of bulk data insertion, no need any new tools to make it readable on the stream! security wise less safer when you work with json file! there is no structure like json you have flexibility while all those efficency I mentioned already exist

here are what I investigated (searching)

- JSON is known as a light-weight data format type and is favored for its human readability and nesting features. It is often used in conjunction with APIs and data configuration. CSV: CSV is a data storage format that stands for Comma Separated Values with the extension
- json is more adaptive(versatile) and csv is less
- json mainly uses the javascript data types while the csv is more inclusive
- json It is less secured and csv more
- json consume more memory than csv
- json It support a lot of scalability in terms of adding and editing the content.= while csv doesnt a lot in term of scalability
- json less compact as compared to csv file
- json is better at showing hierarchical/ relational data
- the standard csv reader application (excel) is not very reliable
- json is much easier to work in scale
- csv might lose data when you are forced to make some cut-off for number of showing!

### 2.Write a query to return specific data (instead of the whole collection) in an interactive noSQL database shell (such as mongo shell), either using the example collections or your own data to populate two or more collections with at least two elements each.

the MongoDB shell version v5.0.5 and gui mongo compass 1.33.1 were installed and mongo, mongod were added to env variables
with MongoDB Compass a new connection made on localhost:27017

- make sure the mongo MongoDB Database Server (MongoDB) is started in your services (adminitrative tools--> services)

some json data inserted to bderma database as an example:
`{ "_id": { "$oid": "634a6920dd38136cb3d0dc68" }, "first_name": "Soheyl", "last_name": "Rahgozar", "email": "soheyl@mail.mcgill.ca", "city": "montreal" }`

when you want select \* your query would be like this:
db.collection_name.find({})

to do so:

1. inside the terminal `use bdermaplus`
2. db.customer({})
3. db.customer.find({first_name:"Soheyl"}) the same if you ask select \* from customer where name="soheyl"

or lets say for the more advancer version
`db.service.find({price: {$gt:'150'}})`

### 3. Implement that same query through NodeJS or another access technology that is not the interactive shell of the database technology you chose.

please visit the repo at :
https://github.com/sohaleKing/webDataBase/tree/master/bDermaPlus_DB/reflection7

or look at the code below:

```js
const express = require("express");
const app = express();
const { MongoClient } = require("mongodb");

const PORT = {
  BACKEND: 9090,
  DATABASE: 27017,
};

let url = `mongodb://localhost:${PORT.DATABASE}`;
const client = new MongoClient(url);
const dbName = "bdermaplus";

const startConnection = () => {
  client
    .connect()
    .then((client) => client.db(dbName).listCollections().toArray())
    .then((collections) => {
      console.log("you collections are");
      collections.forEach((collection) => console.log(collection.name));
    });
};

const endConnection = () => {
  console.log("end connection");
  client.close();
};

//landing api point
app.get("/", (req, res) => {
  startConnection();
  res.json({ connected: dbName });
});

//customers list
app.get("/customer", (req, res) => {
  const customer = client.db(dbName).collection("customer");
  customer.find({}).toArray((err, items) => {
    !!err && console.log(error);
    res.json(items);
  });
});

//services
app.get("/service", (req, res) => {
  const service = client.db(dbName).collection("service");
  service.find({}).toArray((err, items) => {
    !!err && console.log(error);
    res.json(items);
  });
});

//finishing
app.get("/exit", (req, res) => {
  endConnection();
  res.json({ message: "bye" });
  res.end();
});

//show montrealers
app.get("/montrealer", (req, res) => {
  const montrealer = client.db(dbName).collection("customer");
  montrealer.find({ city: "montreal" }).toArray((err, items) => {
    !!err && console.log(error);
    res.json(items);
  });
});

//show more expensive than 150 CAD
app.get("/expensive", (req, res) => {
  const expensive = client.db(dbName).collection("service");
  expensive.find({ price: { $gt: "150" } }).toArray((err, items) => {
    !!err && console.log(error);
    res.json(items);
  });
});

app.listen(PORT.BACKEND, () => {
  console.log("listening on PORT " + PORT.BACKEND);
});
```

### 4. Return the query results over HTTP in HTML (with CSS if you wish) with the web server technology of your choice.

```js
//customers list
const customer = client.db(dbName).collection("customer");
app.get("/customer", (req, res) => {
  customer.find({}).toArray((err, items) => {
    !!err && console.log(error);
    let tableContent =
      "<table border='1'> <tr><th>First Name</th><th>Last Name</th><th>email</th><th>city</th></tr>";
    for (let x in items) {
      tableContent +=
        "<tr><td>" +
        JSON.stringify(items[x].first_name) +
        "</td><td>" +
        JSON.stringify(items[x].last_name) +
        "</td><td>" +
        JSON.stringify(items[x].email) +
        "</td><td>" +
        JSON.stringify(items[x].city) +
        "</td></tr>";
    }
    tableContent += "</table>";
    res.write("<h1>cutomer list inside he bdermaplus databse</h1>");
    res.write(`${tableContent}`);
    res.send();
    // res.json(items);
  });
});
```

### 5. Create a HTML form to control the query parameters, again with the tools of your choice.

### 6. With the tools of your choice, connect the noSQL database as back end into the query-form front end.
