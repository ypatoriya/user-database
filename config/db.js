const mysql = require('mysql2/promise');

const mysqlpool = mysql.createPool({
    host: 'localhost',//process.env.DB_HOST,
    user: 'root',//process.env.DB_USER,
    password:'', //process.env.DB_PASSWORD,
    database: 'user'//process.env.DB_DATABASE
});

module.exports =  mysqlpool;