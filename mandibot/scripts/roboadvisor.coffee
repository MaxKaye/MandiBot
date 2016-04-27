original = [
  'How about'
  'How about saying'
  'What about saying'
  'Perhaps you meant'
]

new_word = [
  'darn'
  'shoot'
  'crud'
  'boy'
  'haha'
]

suggestAlternative = (words) ->
  i = Math.floor(Math.random() * words.length)
  words[i]

module.exports = (robot) ->
  robot.hear /(the ([^\s]+) )?(fuck|shit)/i, (res) ->
    if res.match[2]
      res.send suggestAlternative(original) + ' the ' + res.match[2] + ' team instead?'
    else
      res.send suggestAlternative(original) + ' \'' + suggestAlternative(new_word) + '\' instead, okay?'
