#full credit and thanks to Hubot Scripts with author "searls" for creating this hubot plugin. This plugin Googles <query> & returns 1st result's URL
#URL: https://github.com/github/hubot-scripts/blob/master/src/scripts/google.coffee
#Date of retrieval: 04/28/2016

module.exports = (robot) ->
  robot.respond /(google)( me)? (.*)/i, (msg) ->
    googleMe msg, msg.match[3], (url) ->
      msg.send url

googleMe = (msg, query, cb) ->
  msg.http('http://www.google.com/search')
    .query(q: query)
    .get() (err, res, body) ->
      cb body.match(/class="r"><a href="\/url\?q=([^"]*)(&amp;sa.*)">/)?[1] || "Sorry, Google had zero results for '#{query}'"
