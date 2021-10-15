// call dependents
const { Client } = require("pg");

// set up client target connection
const client = new Client({
  user: "postgres",
  host: "temporarily not here",
  database: "postgres",
  password: "temporarily not here",
  port: 5432,
});

// connect to the remote client
client.connect(function (err) {
  if (err) throw err;
  console.log("Connected!");
});

// define the cityState query function
const cityState = async (city, state) => {
  let query = `SELECT * FROM restaurants`;
  let isFirst = true;
  if (city) {
    if (isFirst) {
      query = query + " WHERE";
    } else {
      query = query + " AND";
    }
    query = `${query} city = '${city}'`;
    isFirst = false;
    console.log(city);
  }

  if (state) {
    if (isFirst) {
      query = query + " WHERE";
    } else {
      query = query + " AND";
    }
    query = `${query} state = '${state}'`;
    isFirst = false;
    console.log(state);
  }

  console.log(query);

  const response = await client.query(query);
  return response.rows;
};


// define restQuery query to find entries based on city, state, and food restrictions
const restQuery = async (jsonArray) => {
  let query = `SELECT restaurants.* FROM restaurants INNER JOIN dishes ON restaurants.restaurant_id = dishes.restaurant_id`;
  let isFirst = true;
  
  // loop through json data and assign keys as constants and add values
  for (const [key, value] of Object.entries(jsonArray)) {
    console.log(`the key is ${key} and the value is ${value}`)
    
    // setting the correct terminology for query construction
    if (isFirst) {
      query = query + " WHERE";
    } 
    else {
    query = query + " AND";
    }
    
    // console.log checkpoint
    console.log(`the query is "${query}"`);
    
    // removing the isFirst property for proper query construction
    isFirst = false;
    
    // city and state can by key/value'd to the restaurants table, but food restrictions must be related to the dishes table
    if (key == 'city') {
      query = query +  ` restaurants.${key} = '${value}'`;
      console.log(query)
    }
    
    else if (key == 'state') {
      query = query +  ` restaurants.${key} = '${value}'`;
      console.log(query)
    }

    else if (key != 'city' || 'state') {
      query = query + ` dishes.${key} = ${value}`;
    console.log(query)
   }
  };
  // console log the whole query for troubleshooting
  console.log('final query is')
  console.log(query);

  query = query + ";";

  // await the outcomes of the query and return the data to the front end
  const response = await client.query(query);
  return response.rows;
};


 

  // if (state) {
  //   if (isFirst) {
  //     query = query + " WHERE";
  //   } else {
  //     query = query + " AND";
  //   }
  //   query = `${query} state = '${state}'`;
  //   isFirst = false;
  //   console.log(state);
  // }

  // console.log(query);

  // const response = await client.query(query);
  // return response.rows;
// };



module.exports = {
  cityState,
  restQuery,
};

// for (const [key, value] of Object.entries(YOUR_JSON_OBJ_HERE)) {
//   // Here you can access the property name from 'key' and the value from 'value'
//   console.log(`the key is ${key} and the value is ${value}`)
// }


