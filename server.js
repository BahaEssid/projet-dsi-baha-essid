const express = require("express");
const app = express();
const port = 3002;
const path = require('path');
const mysql = require('mysql');
const hbs = require('express-hbs');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'news'
});

connection.connect();

app.use(express.urlencoded({ extended: true }));
app.engine('hbs', hbs.express4());
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.get("/", (req, res) => {
  connection.query("SELECT * FROM actualites order by date_publication desc ", function (error, results, fields) {
    

    // this is to take data from database and pass it to page index
    res.render('index', { news: results });
  });
});

app.get("/add", (req, res) => {
  res.sendFile(path.join(__dirname, "views/add.html"));
});

app.get("/addnews", function (req, res) {
  var untitre = req.query.letitre;
  var unedesc = req.query.ladescription;
  var sql = "INSERT INTO actualites(titre, description) VALUES (?, ?)";

  connection.query(sql, [untitre, unedesc], function (error, results, fields) {
    
    res.redirect("/");
  });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
