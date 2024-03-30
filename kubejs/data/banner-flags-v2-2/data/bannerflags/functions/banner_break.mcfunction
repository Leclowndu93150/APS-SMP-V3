execute if entity @s[tag=BF_BigFlag] run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond",Count:1b}}
summon item ~ ~1 ~ {Tags:["InitI"],Item:{id:"minecraft:white_banner",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=InitI] Item merge from entity @s item
tag @e remove InitI
kill @s
