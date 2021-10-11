var CONFIG = require('./config.json');

const { Client } = require('pg');
const { config } = require('process');
const client = new Client({
  user: CONFIG.username,
  host: CONFIG.hostname,
  database: CONFIG.database,
  password: CONFIG.password,
  port: CONFIG.port,
});

client.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});

const query = {
    //give the query a name 
    name: 'fetch_nyc',
    test: "SELECT * FROM restaurants WHERE city = 'New York City' AND state = 'New York';", 
    // values: [1]
};

//call back
client.query(query.test, (err, res) => {
    if (err) {
        console.log(err.stack);
    } else {
        console.log(res.rows);
    }
});
