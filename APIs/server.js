// const { json } = require("express");
const express = require("express");

const app = express();
const port = 3000;

app.use(express.json());

const functions = require("./main");

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});

app.post("/restaurantQuery", async (request, response) => {
  console.log('request.body is...')
  console.log(request.body);
  const jsonArray = request.body
  console.log('jsonArray is...')
  console.log(jsonArray)

  const restaurantsReponse = await functions.restQuery(request.body);
  response.status(200).send(restaurantsReponse);
});


app.get("/api", (req, res) => {
  res.send("Hello World!");
});
