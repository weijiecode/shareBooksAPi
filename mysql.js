const mysql = require("mysql")
const client = mysql.createPool({
    host: '127.0.0.1',
    user: 'root',
    password: '123456',
    port: '3306',
    database: 'sharebooks'
})
module.exports = client