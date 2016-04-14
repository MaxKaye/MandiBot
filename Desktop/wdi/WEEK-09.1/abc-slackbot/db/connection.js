var mongoose = require("mongoose");

var CharacterSchema = new mongoose.Schema({
  symbol: String,
  pinyin: String,
  meaning: String,
  used_as: String,
  example: String
});

mongoose.model("Character", CharacterSchema);
mongoose.connect("mongodb://localhost/abc-slackbot");

module.exports = mongoose;
