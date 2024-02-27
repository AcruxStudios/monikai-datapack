#NOTES
#values are expressed in seconds
##########################################

#Step value
scoreboard objectives add MONIKAI_TIMERSTEP_DECR dummy
scoreboard players set Alejo MONIKAI_TIMERSTEP_DECR -1

scoreboard objectives add MONIKAI_TIMERSTEP_INCR dummy
scoreboard players set Alejo MONIKAI_TIMERSTEP_INCR 1
###########################################################################################

#Gift timer
scoreboard objectives add MONIKAI_TIMERDEF_GIFT dummy
scoreboard players set Alejo MONIKAI_TIMERDEF_GIFT 900

scoreboard objectives add MONIKAI_TIMER_GIFT dummy
function monikai:timers_restart_gift
#############################################################################################

#Gift Type timer
scoreboard objectives add MONIKAI_TIMERDEF_GIFTTYPE dummy
scoreboard players set Alejo MONIKAI_TIMERDEF_GIFTTYPE 3

scoreboard objectives add MONIKAI_TIMER_GIFTTYPE dummy
function monikai:timers_restart_gifttype
#############################################################################################

#Dialogue Randomizer timer
scoreboard objectives add MONIKAI_TIMERDEF_DIALOG dummy
scoreboard players set Alejo MONIKAI_TIMERDEF_DIALOG 10

scoreboard objectives add MONIKAI_TIMER_DIALOG dummy
function monikai:timers_restart_dialog
#############################################################################################

#GetFlower cooldown timer
scoreboard objectives add MONIKAI_TIMERDEF_DIALOG_CD_GETITEM dummy
scoreboard players set Alejo MONIKAI_TIMERDEF_DIALOG_CD_GETITEM 5

scoreboard objectives add MONIKAI_TIMER_DIALOG_CD_GETITEM dummy
function monikai:timers_restart_dialog_cd_getitem
#############################################################################################