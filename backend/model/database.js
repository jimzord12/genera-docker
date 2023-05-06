//
const { connectionInfo } = require("../config/dbConfig");
const mysql = require("mysql");

// const database = mysql.createConnection(testDB);
const database = mysql.createConnection(connectionInfo);

module.exports = database;
