#THIS MCFUNCTION IS EXECUTED EVERY 1 SECOND

#Gift timer
scoreboard players operation Alejo MONIKAI_TIMER_GIFT += Alejo MONIKAI_TIMERSTEP_DECR

#GiftType timer
scoreboard players operation Alejo MONIKAI_TIMER_GIFTTYPE += Alejo MONIKAI_TIMERSTEP_DECR
execute if score Alejo MONIKAI_TIMER_GIFTTYPE matches 0 run function monikai:timers_restart_gifttype

#Dialog Randomizer timer
scoreboard players operation Alejo MONIKAI_TIMER_DIALOG += Alejo MONIKAI_TIMERSTEP_DECR
execute if score Alejo MONIKAI_TIMER_DIALOG matches 0 run function monikai:timers_restart_dialog

#Dialog Cooldown GetFlower
scoreboard players operation Alejo MONIKAI_TIMER_DIALOG_CD_GETITEM += Alejo MONIKAI_TIMERSTEP_DECR