var express = require("express");
var hbs = require("express-handlebars");
var mongoose = require("./db/connection");
var parser = require("body-parser");
var frontpage = require("./frontpage");

frontpage();

var app = express();

var Character = mongoose.model("Character");


app.use("/public", express.static("public"));
app.use(parser.urlencoded({extended:true}));

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
  Character.find({}).then(function(characterMongo){
  res.render("characters-index", {
    characters: characterMongo
  });
});
});

// e.g. localhost:3000/translate/hello
// write code to return the equivalent chinese
app.get("/translate/:word", function(req, res){
  var selectedCharacter = req.params.word;
  Character.findOne({meaning: selectedCharacter}).then(function(character){
  res.render("characters-show", {
    character: character
  });
});
});

app.post("/character", function(req, res){
  var characterData = req.body.character;
  Character.create(characterData).then(function(newCharacter){
    res.redirect("/characters/" + newCharacter.symbol);
  });
});

app.listen(3001, function(){
  console.log("我在世");
});
