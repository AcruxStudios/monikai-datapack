#create model
execute at @e[name=MONIKAI_MARKER_SPAWN] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"Monika"}',Rotation:[90f,0f],Invulnerable:1b,ShowArms:1b,NoBasePlate:1b}

#Setup armor
execute at @e[name=MONIKAI_MARKER_ARMOR] run data modify entity @e[name=Monika,limit=1] ArmorItems[3] set from block ~-1 ~ ~ Items[0]
execute at @e[name=MONIKAI_MARKER_ARMOR] run data modify entity @e[name=Monika,limit=1] ArmorItems[2] set from block ~-1 ~ ~ Items[1]
execute at @e[name=MONIKAI_MARKER_ARMOR] run data modify entity @e[name=Monika,limit=1] ArmorItems[1] set from block ~-1 ~ ~ Items[2]
execute at @e[name=MONIKAI_MARKER_ARMOR] run data modify entity @e[name=Monika,limit=1] ArmorItems[0] set from block ~-1 ~ ~ Items[3]

#Setup weapons
execute at @e[name=MONIKAI_MARKER_WEAPONS] run data modify entity @e[name=Monika,limit=1] HandItems[0] set from block ~-1 ~ ~ Items[0]
execute at @e[name=MONIKAI_MARKER_WEAPONS] run data modify entity @e[name=Monika,limit=1] HandItems[1] set from block ~-1 ~ ~ Items[1]