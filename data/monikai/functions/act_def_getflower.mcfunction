execute at @e[name=Monika_] run kill @e[type=item,nbt={Item:{id:"minecraft:poppy"}},distance=..1] 
function monikai:dialogue_getflower
execute if score Alejo MONIKAI_TIMER_GIFT matches ..180 run function monikai:dialogue_promisegift