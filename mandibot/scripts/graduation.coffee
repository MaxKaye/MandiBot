graduationGif = [
  "http://www.animated-gifs.eu/kids-graduation/0016.gif"
  "http://www.animated-gifs.eu/kids-graduation/0013.gif"
  "http://www.animated-gifs.eu/kids-graduation/0012.gif"
  "http://www.animated-gifs.eu/kids-graduation/0020.gif"
]


module.exports = (robot) ->
  robot.hear /(graduation).*/i, (msg) ->
    msg.send msg.random graduationGif
