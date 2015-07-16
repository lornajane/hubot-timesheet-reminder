# Description:
#   Reminds you to do a thing at a time
#
# Commands:
#   hubot hi - say hi
#

ROOM = "#test"

cronJob = require('cron').CronJob

myTime = ->
    console.log("It is time");

module.exports = (robot) ->

    job = new cronJob("* * * * * *", myTime, null, true)


