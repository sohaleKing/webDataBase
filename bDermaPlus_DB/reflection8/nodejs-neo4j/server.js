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
