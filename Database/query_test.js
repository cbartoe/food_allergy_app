const query = {
    //give the query a name 
    name: 'fetch_nyc'
    test: 'SELECT * FROM restuarants WHERE city = $1;', 
    values: [1]


//call back
client.query(query, (err, res) => {
    if (err) {
        console.log(err.stack)
    } else {
        console.log(res.rows[0])
    }
})

//promise
client 
    .query(query)
    .then(res => console.log(res.rows[0]))
    .catch(e => console.error(e.stack))

