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
