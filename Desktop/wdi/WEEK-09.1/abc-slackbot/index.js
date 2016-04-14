var express = require("express");
var hbs = require("express-handlebars");
var frontpage = require("./frontpage");

frontpage();

var app = express();

app.set("view engine", "hbs");
app.engine(".hbs", hbs({
  extname: ".hbs",
  partialDir: "views/",
  layoutDir: "views/",
  defaultLayout: "layout-main"
}));


app.get("/", function(req, res){
  console.log("Someone visited my page");
  res.render("app-welcome");
});

app.listen(3001, function(){
  console.log("我在世");
});
