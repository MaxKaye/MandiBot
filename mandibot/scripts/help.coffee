module.exports = (robot) ->

 robot.respond /mandihelp/i, (res) ->
    res.emote "Here is commands list for Mandibot:

1. <translate {word}>  translates to english from initial language using Google Hubot API.

2. <mandi>  translates from online Chinese database

3. <Is {word} in database?>  tells you if the word you wanted to learn is in the db
4. <id> tells you who is in the chatroom
5. <thank|s> returns 'you're welcome' in a random language
6.<{curse word}> returns a suggested new word to use instead of course
7. <confucius|quote> makes http call and returns website
8. <fortune cookie> returns random fortune
9. <should I learn {insert} language> advises on whether you should learn the language"
