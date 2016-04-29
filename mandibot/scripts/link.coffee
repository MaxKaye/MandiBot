module.exports = (robot) ->
  robot.respond /fortune cookie/i, (msg) ->
    robot.http("http://fortunecookieapi.com/v1/cookie").get() (err, res, body) ->
      if err
        msg.send "Encountered an error (#{err})"
        return
      if res.statusCode isnt 200
        msg.send "Request didn't come back HTTP 200 (#{res.statusCode}, #{res.statusMessage})"
        return
      data = JSON.parse body
      fortune = data[0].fortune.message
      msg.send(fortune)
