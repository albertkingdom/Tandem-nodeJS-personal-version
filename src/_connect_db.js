const mysql = require("mysql");
const bluebird = require("bluebird");

const db = mysql.createConnection({
  user: "albert",
  password: "albert",
  host: process.env.MYSQL_HOST,
  database: process.env.MYSQL_DATABASE || "tandem_docker",
  port: 3306,
});
db.on("error", (event) => {
  console.log(event);
});
db.connect();

bluebird.promisifyAll(db);

module.exports = db;
