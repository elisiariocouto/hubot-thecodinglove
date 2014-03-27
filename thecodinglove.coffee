# Description
#   Hubot replies with a GIF and the description of a random post from thecodinglove.com.
#
# Commands:
#   hubot thecodinglove - A random thecodinglove.com post
#
# Author:
#   elisiariocouto

module.exports = (robot) ->
    robot.respond /coding love/i, (msg) ->
        msg.reply "I can't, I'm crafting the script..."
