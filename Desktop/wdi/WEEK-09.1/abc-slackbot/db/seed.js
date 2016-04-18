// 1. load info from seeds.json into mongo
var mongoose = require("./connection");
var seedData = require("./seeds.json");

var Character = mongoose.model("Character");

Character.remove({}).then(function(){
  Character.collection.insert(seedData);
});

// 2.  seed db from excel instead of seeds.json

// Usage: `$ node db/seed.js`
// connect to database
// Remove existing data
// insert contents of seeds.json using model
