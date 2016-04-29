bye = [
  "bye",
  "再见",
  "bon voyage",
  "가세요",
  "さようなら",
  "adiós",
  "vsego dobrogo"
]

module.exports = (robot) ->
  robot.respond /bye/i, (msg) ->
    msg.send msg.random bye
  goodbye = new RegExp "bye #{robot.name}", "i"
  robot.hear goodbye, (msg) ->
    msg.send msg.random bye
