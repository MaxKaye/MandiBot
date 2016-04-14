var mongoose = require("mongoose");
var seedData = require("./seeds.json");

var CharacterSchema = new mongoose.Schema({
  symbol: String,
  pinyin: String,
  meaning: String,
  used_as: String,
  example: String
});

mongoose.model("Character", CharacterSchema);
mongoose.connect("mongodb://localhost/abc-slackbot");

module.exports = {
  characters: seedData
};
