module.exports = function(robot) {
  robot.hear(/confucius/i, function(msg) {
    msg.send("http://www.quotationspage.com/quotes/Confucius/");
  });

  robot.respond(/confucius quote/i, function(msg) {
    msg.reply("Here are the latest confucius quotes:");
    msg.send("http://www.quotationspage.com/quotes/Confucius/");
  });

  robot.respond(/is it (graduation)\s?\?/i, function(msg){
		var today = new Date();
		msg.reply(today.getDate() == 29 && (today.getMonth() + 1) == 4 ? "YES" : "NO");
	});
};
