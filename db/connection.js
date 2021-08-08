const mysql = require('mysql');
const util = require('util');

const connection = mysql.createConnection({
  
    host: 'localhost',
  
    // Your port, if not 3306
    port: 3306,
  
    // Your username
    user: process.env.DB_USER,
  
    // Be sure to update with your own MySQL password!
    password: process.env.DB_PW,
    database: process.env.DB_NAME,
  });

  connection.connect();
  connection.query = util.promisify(connection.query);

module.exports = connection;
