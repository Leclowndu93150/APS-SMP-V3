scale delay set 0 @e[type=cobblemon:pokemon]
execute if entity @s[nbt={Pokemon:{size:"small"}}] run function pokesizes:scale_small
execute if entity @s[nbt={Pokemon:{size:"large"}}] run function pokesizes:scale_large
#tellraw @a "sizescale triggeredd"