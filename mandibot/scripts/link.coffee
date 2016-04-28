

# query_url = "http://www.quotationspage.com/quotes/Confucius/"
#
# module.exports = (robot) ->
#   robot.respond /command what/i, (message) ->
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
