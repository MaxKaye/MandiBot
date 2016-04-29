# MandiBot
A sophisticated slackbot that responds to you with Chinese. Feel free to search its brain and add new words to its vocabulary. 受用SlackBot不尽!


![ScreenShot](file:///Users/maxkaye/Desktop/mandibot_demo.png "Demo")

User stories:
As a user in a chatroom, I want to be able to retrieve information from database in order to real-time translate conversations
As a user in a chatroom, I want to be able to have a bot interject when someone insults me or uses profane language
As a user in chatroom, I want to get confucius quotes to learn about chinese culture and break the ice when working on remote dev teams
As a user in chatroom I want to get random fortunes from an automated fortune generator by wrapping and scraping json
As a user in chatroom, I would like to have a list of the hubot’s commands to know how humans interact with mandibot
As a user, I want to see what other users are in the chatroom
AS a user, I want to be able to get the top search results for whatever I search for in order to be more efficient at work

Technology Explanation: mandibot is a chat bot built on the Hubot framework. Here are some links to get you started on building your own custom bot!:

Basic Setup:
https://www.npmjs.com/package/hubot-slack
http://blog.diniscruz.com/2013/06/trying-to-running-hubot-and-being-stuck.html
https://github.com/michikono/slackbot-tutorial

Configure Hubot:
https://hubot.github.com/docs/scripting/
http://www.lornajane.net/posts/2015/set-up-your-first-hubot
https://www.twilio.com/blog/2015/12/supercharge-your-ip-messaging-chat-with-hubot.html
https://ga-students.slack.com/apps/new/A0F7XDU93-hubot

Link to deployed app:** This application is still in testing and will not be publically available until May 11th. Please see Mandibot repository for commit history

Dependency Installation: It is easy to add dependencies to increase the capability of your bot! Please see link for adding dependencies to Package.json and external scripts file:
http://www.sitepoint.com/spice-up-your-slack-channel-with-hubot/

Dependencies Used:
URL: https://github.com/hubot-scripts/hubot-google-translate            Contributors: technicalpickles, Sija, bkeepers
URL: https://www.npmjs.com/package/hubot-scripts-stock                  Author: eliperkins

Unsolved problems / hurdles:
The most challenging aspect of this project was configuring the hubot and connecting properly with slack. Once it was configured, writing the scripts and plugins was fun and totally doable! Taking this project to the next level with more in depth javascript code and bringing the scripts to other chatrooms will be my biggest challenge over the next two weeks.

### Running mandibot Locally

You can test your hubot by running the following, however some plugins will not
behave as expected unless the [environment variables](#configuration) they rely
upon have been set.

You can start mandibot locally by running:

    % bin/hubot

You'll see some start up output and a prompt:

    [Sat Feb 28 2015 12:38:27 GMT+0000 (GMT)] INFO Using default redis on localhost:6379
    mandibot>

Then you can interact with mandibot by typing `mandibot help`.

    mandibot> mandibot help
    mandibot animate me <query> - The same thing as `image me`, except adds [snip]
    mandibot help - Displays all of the help commands that mandibot knows about.
    ...

## Adapters

Adapters are the interface to the service you want your hubot to run on, such
as Campfire or IRC. There are a number of third party adapters that the
community have contributed. Check [Hubot Adapters][hubot-adapters] for the
available ones.

If you would like to run a non-Campfire or shell adapter you will need to add
the adapter package as a dependency to the `package.json` file in the
`dependencies` section.

Once you've added the dependency with `npm install --save` to install it you
can then run hubot with the adapter.

    % bin/hubot -a <adapter>

Where `<adapter>` is the name of your adapter without the `hubot-` prefix.

[hubot-adapters]: https://github.com/github/hubot/blob/master/docs/adapters.md

## Deployment

    % heroku create --stack cedar
    % git push heroku master

If your Heroku account has been verified you can run the following to enable
and add the Redis to Go addon to your app.

    % heroku addons:add redistogo:nano

If you run into any problems, checkout Heroku's [docs][heroku-node-docs].

You'll need to edit the `Procfile` to set the name of your hubot.

More detailed documentation can be found on the [deploying hubot onto
Heroku][deploy-heroku] wiki page.
