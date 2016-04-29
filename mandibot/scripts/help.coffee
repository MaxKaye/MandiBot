module.exports = (robot) ->

 robot.respond /mandihelp/i, (res) ->
    res.emote "Here is commands list for Mandibot:

1. <translate {word}>  translates to english from initial language using Google Hubot API.

2. <mandi {word}>  translates from online Chinese database

3. <google + anything> Added prewritten plugin to increase search efficiency within chatroom
4. <id> tells you who is in the chatroom
5. <thank|s> returns 'you're welcome' in a random language
6.<{curse word}> listens for curse and returns a suggested new word
7. <confucius|quote> makes http call and returns website
8. <fortune cookie> scrapes http json and returns random fortune
9. <should I learn {insert} language> advises on whether you should learn the language
10. <chinese idiom> queries idiom database and responds with idiom description
11. <Is it graduation?> returns whether current date is graduation"
