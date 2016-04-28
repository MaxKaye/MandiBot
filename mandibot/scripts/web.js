module.exports = function(robot) {
  // robot.hear(/confucius/i, function(msg) {
  //   msg.send("http://www.quotationspage.com/quotes/Confucius/")
  // });

  robot.respond(/confucius quote/i, function(msg) {
    msg.reply("Here are the latest confucius quotes:");
    msg.send("http://www.quotationspage.com/quotes/Confucius/")
  });
};
