welcome = [
  "you're welcome",
  "没有问题",
  "de nada",
  "천만에요",
  "どういたしまして",
  "vous êtes le bienvenu",
  "пожалуйста"
]

module.exports = (robot) ->
  robot.respond /thank(s| you)/i, (msg) ->
    msg.send msg.random welcome
  thanks = new RegExp "thank(s| you) #{robot.name}", "i"
  robot.hear thanks, (msg) ->
    msg.send msg.random welcome
