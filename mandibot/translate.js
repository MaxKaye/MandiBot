var request = require("request");

module.exports = function(bot){
  bot.respond(/translate (.*)/, function(message){
    request("http://localhost:3001/translate/" + message.match[1], function(err, res, body){
      return message.reply(body);
    });
  });
};
