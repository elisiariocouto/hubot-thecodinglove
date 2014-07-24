# Description
#   Hubot replies with a GIF and the description of a random post from thecodinglove.com.
#
# Dependencies:
#   "tumblrbot": "0.1.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot coding love - A random thecodinglove.com post.
#
# Author:
#   elisiariocouto

module.exports = (robot) ->
    # In my test scenario, the script couldn't load the HUBOT_TUMBLR_API_KEY
    # environment variable. I know it's an ugly hack...
    process.env.HUBOT_TUMBLR_API_KEY = 'insert_your_api_key'
    tumblr = require('tumblrbot')(robot)
    robot.respond /coding love/i, (msg) ->
        tumblr.posts("thecodinglove.tumblr.com").random (data) ->
            msg.send data.title
            msg.send ((data.body.split "src=")[1].split "\"")[1]
