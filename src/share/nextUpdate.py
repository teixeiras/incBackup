#!/usr/bin/python2

import croniter
import datetime
import sys

if len (sys.argv) != 3:
    print "Format must be script cronFormat unixstampStart"
    exit(1)
now = datetime.datetime.fromtimestamp(int(float(sys.argv[2])))
sched = sys.argv[1]    # at 3:01pm on the 1st and 15th of every month
cron = croniter.croniter(sched, now)

nextdate = cron.get_next(datetime.datetime)

print  int(nextdate.strftime("%s")) 
