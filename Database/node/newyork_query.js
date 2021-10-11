const Pool = require('pg').Pool
const pool = new Pool({
  user: '',
  host: '',
  database: '',
  password: '',
  port: 5432,
});

const checkcity = () => {
    return new Promise(function(resolve, reject) {
      pool.query('SELECT * FROM restuarants WHERE city = "New York City"', (error, results) => {
        if (error) {
          reject(error)
        }
        resolve(results.rows);
      })
    }) 
  }
  
  module.exports = {
    checkcity}