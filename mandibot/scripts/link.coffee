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
# module.exports = function(robot) {
#   robot.http("'https://www.goodreads.com/author/quotes/15321.Confucius")
#   .get()(function(err, res, body) {
#     msg.send(body);
#   });
# };



# module.exports = (robot) ->
# 	robot.respond /CONFSAY$/i, (msg) ->
# 		msg.http('https://www.goodreads.com/author/quotes/15321.Confucius')
#             .get() (error, response, body) ->
#                 # passes back the complete reponse
#                 response = JSON.parse(body)
#                 if response.success == "true"
#                 	msg.send response.facts[0]
#                 else
#                 	msg.send "Unable to get confucius quotes ."
#
#



# getAdvice = (msg, query) ->
#   msg.http("http://www.quotationspage.com/quotes/Confucius/#{query}")
#     .get() (err, res, body) ->
#       results = JSON.parse body
#       if results.message? then randomAdvice(msg) else msg.send(msg.random(results.slips).advice)
#
# randomAdvice = (msg) ->
#   msg.http("http://api.adviceslip.com/advice")
#     .get() (err, res, body) ->
#       results = JSON.parse body
#       advice = if err then "You're on your own, bud" else results.slip.advice
#       msg.send advice
#
#
# module.exports = (robot) ->
#   robot.respond /what (do you|should I) do (when|about) (.*)/i, (msg) ->
#     getAdvice msg, msg.match[3]
#
#   robot.respond /how do you handle (.*)/i, (msg) ->
#     getAdvice msg, msg.match[1]
#
#   robot.respond /(.*) some advice about (.*)/i, (msg) ->
#     getAdvice msg, msg.match[2]
#
#   robot.respond /(.*) think about (.*)/i, (msg) ->
#     getAdvice msg, msg.match[2]
#
#   robot.respond /(.*) advice$/i, (msg) ->
#     randomAdvice(msg)
#
#
#
#
#








# module.exports= (robot) ->
#   robot.respond /(quote)? (.*)/i, (res) ->
#     number = res.match[2]
#     robot.http("http://www.quotationspage.com/quotes/Confucius/"+"number+")
#       .get() (err, res, body) ->
#         if res.headers['Content-Length'] <=1
#           msg.send "sorry"
#         else
#           res.reply body


# module.exports= (robot) ->
#   robot.hear /blah/i, (msg) ->
#     robot.http("http://www.quotationspage.com/quotes/Confucius/")
#       .header('Accept', 'application/json')
#       .get() (err, res, body) ->
#         console.log res.statusCode
#         data = JSON.parse body
#         msg.send body


# query_url = "http://www.quotationspage.com/quotes/Confucius/"
#
# module.exports = (robot) ->
#   robot.respond /confucius what/i, (message) ->
#       message.http(query_url)
#         .header('Content-Length', 0)
#         .post() (err, res, body) ->
#           console.log body
#           json = JSON.parse(body)
#           if json.success == true
#             message.send(body)
#           else
#             message.send(body)


# module.exports = (robot) ->
#
#   robot.respond /confucius say/i, (msg) ->
#     msg.http("http://www.quotationspage.com/quotes/Confucius/")
#       .get() (err, res, body) ->
#         msg.send JSON.parse(body).pug
