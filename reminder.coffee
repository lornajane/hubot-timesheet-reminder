# Description:
#   Reminds you to sumbit your timesheet at 5PM on a Friday
#
# Dependencies:
#   "cron": "*"
#
# Configuration:
#   HUBOT_TIMESHEET_REMINDER_ROOM which room the reminder should go into
#
# Notes:
#   Feel free to use, adapt, expand, make configurable ...
#
# Author:
#   lornajane

ROOM = process.env.HUBOT_TIMESHEET_REMINDER_ROOM

cronJob = require('cron').CronJob

module.exports = (robot) ->

    doReminder = ->
        robot.messageRoom(ROOM, "This is a polite reminder.  Fill in your timesheets for the week, please");

    job = new cronJob("0 0 17 * * 5", doReminder, null, true)

