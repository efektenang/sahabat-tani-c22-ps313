const mysql = require('mysql');

const db = mysql.createPool({
    hosr: 'localhost',
    user: 'root',
    password: '',
    database: 'api-user'
});

exports.db = db;