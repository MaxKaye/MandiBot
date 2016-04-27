module.exports = (robot) ->

 robot.respond /mandihelp/i, (res) ->
    res.emote "Here is commands list for Mandibot:

1. <translate {word}>  translates to english from initial language using Google Hubot API.

2. <mandi>  translates from online Chinese database

3. <Is {word} in database?>  tells you if the word you wanted to learn is in the db"
