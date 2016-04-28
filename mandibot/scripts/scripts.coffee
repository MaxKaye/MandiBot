module.exports = (robot) ->
  robot.respond /mandibot/i, (res) ->
    res.send "Mandibot is a translation management service that uses customized Hubot commands to learn with, understand from, and communicate with individuals from different lingual backgrounds. To learn some of the commands, enter <mandihelp>"

  robot.respond /sup/i, (res) ->
    res.emote "sup"

  robot.respond /should I learn (.*) language/i, (res) ->
    if res.match[1]
      res.send "You should definitely learn" + " " + res.match[1] + " " + "sooner than later"
    else
      res.send "You should hire someone who knows" + " " + res.match[1]
