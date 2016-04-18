var mongoose = require("mongoose");
mongoose.connect("mongodb://localhost/abc-slackbot");

var db = mongoose.connection;

db.on('error', function(err){
  console.log(err);
});

db.once('open', function() {
  console.log("Connected to MongoDB!");

});

var Schema = mongoose.Schema,
    ObjectId = Schema.ObjectId;

var CharacterSchema = new Schema({
  body: String
});

var CharacterModel = mongoose.model("Character", CharacterSchema);



module.exports=function(bot){
  bot.hear(/hello/, function(message){
    CharacterSchema.find({},function(characters){
    return message.reply("你好");
    });

  });
};
