#Is Monika sitting?
execute at @e[name=MONIKAI_MARKER_SITTING] if entity @e[name=Monika_,nbt={Sitting:1b}] run setblock ~ ~-1 ~ redstone_block
execute at @e[name=MONIKAI_MARKER_SITTING] if entity @e[name=Monika_,nbt=!{Sitting:1b}] run setblock ~ ~-1 ~ bedrock

#Is Monika not sitting?
execute at @e[name=MONIKAI_MARKER_NO_SITTING] if entity @e[name=Monika_,nbt={Sitting:0b}] run setblock ~ ~-1 ~ redstone_block
execute at @e[name=MONIKAI_MARKER_NO_SITTING] if entity @e[name=Monika_,nbt=!{Sitting:0b}] run setblock ~ ~-1 ~ bedrock
##########################################################################################################################

#Is Owner low hp?
execute at @e[name=MONIKAI_MARKER_LOWHP] if score Alejo Health matches 1..6 run setblock ~ ~-1 ~ redstone_block
execute at @e[name=MONIKAI_MARKER_LOWHP] if score Alejo Health matches 7.. run setblock ~ ~-1 ~ bedrock

#Is Owner not low hp?
execute at @e[name=MONIKAI_MARKER_NO_LOWHP] if score Alejo Health matches 7.. run setblock ~ ~-1 ~ redstone_block
execute at @e[name=MONIKAI_MARKER_NO_LOWHP] if score Alejo Health matches ..6 run setblock ~ ~-1 ~ bedrock
##########################################################################################################################

#Is Owner dead?
execute at @e[name=MONIKAI_MARKER_DEAD] if score Alejo Health matches ..0 run setblock ~ ~-1 ~ redstone_block
execute at @e[name=MONIKAI_MARKER_DEAD] if score Alejo Health matches 1.. run setblock ~ ~-1 ~ bedrock
##########################################################################################################################

#Is Monika standing up and angry?
execute at @e[name=MONIKAI_MARKER_STANDUPANGRY] if entity @e[name=Monika_,nbt={Sitting:0b}] if entity @e[name=Monika,nbt=!{AngerTime:0}] run setblock ~ ~-1 ~ redstone_block
execute at @e[name=MONIKAI_MARKER_STANDUPANGRY] if entity @e[name=Monika_,nbt=!{Sitting:0b}] if entity @e[name=Monika,nbt=!{AngerTime:0}] run setblock ~ ~-1 ~ bedrock
##########################################################################################################################