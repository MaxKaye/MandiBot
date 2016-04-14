var express = require("express");
var frontpage = require("./frontpage");

frontpage();

var app = express();

app.get("/", function(req, res){
  console.log("Someone visited my page");
  res.send("你好");
});

app.listen(3001, function(){
  console.log("我在世");
});
