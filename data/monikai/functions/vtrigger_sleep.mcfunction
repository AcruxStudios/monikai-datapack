#Has Owner started sleeping?
execute at @e[name=Alejo,nbt={SleepTimer:1s}] run function monikai:dialogue_sleep
#Has Owner slept all night?
execute at @e[name=Alejo,nbt={SleepTimer:100s}] run function monikai:dialogue_goodmorning