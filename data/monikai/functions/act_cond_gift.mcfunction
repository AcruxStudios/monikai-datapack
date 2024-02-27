execute at @e[name=Monika_] if entity @a[name=Alejo,distance=..3] if score Alejo MONIKAI_TIMER_GIFT matches ..0 run function monikai:act_def_gift
#restart gift timer if its zero or less, Lost gift opportunity!
execute if score Alejo MONIKAI_TIMER_GIFT matches ..0 run function monikai:timers_restart_gift