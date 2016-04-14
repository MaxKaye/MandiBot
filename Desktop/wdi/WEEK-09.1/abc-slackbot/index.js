var express = require("express");
var hbs = require("express-handlebars");
var db = require("./db/connection");
var frontpage = require("./frontpage");

frontpage();

var app = express();
app.use("/public", express.static("public"));

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


app.get("/characters", function(req, res){
  res.render("characters-index", {
    characters: db.characters
  });
});

// e.g. localhost:3000/translate/hello
// write code to return the equivalent chinese
// loop thru characters
// if (character.meaning == req.params.word) then render character.symbol
app.get("/translate/:word", function(req, res){
  var selectedCharacter = req.params.word;
  var characterPunch;
  db.characters.forEach(function(character){
    if(character.meaning == selectedCharacter){
      characterPunch = character;
    }
  });
  res.render("characters-show", {
    character: characterPunch
  });
});

app.listen(3001, function(){
  console.log("我在世");
});
