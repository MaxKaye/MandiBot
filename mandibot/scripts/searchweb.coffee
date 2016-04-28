

# module.exports = (robot) ->
# robot.respond /confucius say/i, (res)
#     robot.http("http://www.quotationspage.com/quotes/Confucius/")
#       .get() (err, res, body) ->
#         if err
#           res.reply "Had problems taking the midnight train"
#           robot.emit 'error', err, res
#         else return
#           res.send body

# module.exports = (robot) ->
#   robot.respond /deep/i, (msg) ->
#     msg.http('http://maxkaye.github.io')
#     .get() (error, response, body) ->
#       msg.send body
