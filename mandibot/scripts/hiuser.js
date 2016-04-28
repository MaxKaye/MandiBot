module.exports = function (robot) {
  robot.respond(/id/i, function (msg) {
    msg.reply('hi'); // @mentions the user
    msg.reply_to('hi');
  });
};
