# Description
#   Hubot replies with a GIF and the description of a random post from thecodinglove.com.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot coding love - A random thecodinglove.com post.
#
# Notes:
#
# Author:
#   elisiariocouto

module.exports = (robot) ->
    robot.respond /coding love/i, (msg) ->
        msg.send "I can't, I'm crafting the script..."
