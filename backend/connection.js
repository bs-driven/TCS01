const mysql = require("mysql2");

const connection = mysql.createConnection({
  host: "localhost",
  // Your username
  user: "",
  // Your password
  password: "",
  database: "therapistClient_db"
});

connection.connect(function (err) {
  if (err) throw err;
});

module.exports = connection;