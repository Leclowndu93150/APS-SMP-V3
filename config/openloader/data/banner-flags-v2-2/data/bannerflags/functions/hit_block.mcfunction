
execute align xyz run fill ~ ~ ~ ~ ~ ~ air destroy

#north
execute as @s[y_rotation=135..225] run execute align xyz run summon item_display ~0.5 ~0.5 ~-0.5 {Rotation:[-90f,0f],item_display:"head",Tags:["BF_Flag","BF_Flag1","BF_Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f],scale:[0.7f,0.7f,0.1f]},item:{id:"minecraft:white_banner",Count:1b}}
execute as @s[y_rotation=135..225] run execute align xyz run summon item_display ~0.5 ~0.5 ~-0.5 {Rotation:[-90f,180f],item_display:"head",Tags:["BF_Flag","BF_Flag2","BF_Init2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f],scale:[0.7f,-0.7f,0.1f]},item:{id:"minecraft:white_banner",Count:1b}}
#south
execute as @s[y_rotation=-45..45] run execute align xyz run summon item_display ~0.5 ~0.5 ~1.5 {Rotation:[90f,0f],item_display:"head",Tags:["BF_Flag","BF_Flag1","BF_Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f],scale:[0.7f,0.7f,0.1f]},item:{id:"minecraft:white_banner",Count:1b}}
execute as @s[y_rotation=-45..45] run execute align xyz run summon item_display ~0.5 ~0.5 ~1.5 {Rotation:[90f,180f],item_display:"head",Tags:["BF_Flag","BF_Flag2","BF_Init2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f],scale:[0.7f,-0.7f,0.1f]},item:{id:"minecraft:white_banner",Count:1b}}
#west
execute as @s[y_rotation=45..135] run execute align xyz run summon item_display ~-0.5 ~0.5 ~0.5 {Rotation:[180f,0f],item_display:"head",Tags:["BF_Flag","BF_Flag1","BF_Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f],scale:[0.7f,0.7f,0.1f]},item:{id:"minecraft:white_banner",Count:1b}}
execute as @s[y_rotation=45..135] run execute align xyz run summon item_display ~-0.5 ~0.5 ~0.5 {Rotation:[180f,180f],item_display:"head",Tags:["BF_Flag","BF_Flag2","BF_Init2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f],scale:[0.7f,-0.7f,0.1f]},item:{id:"minecraft:white_banner",Count:1b}}
#east
execute as @s[y_rotation=225..315] run execute align xyz run summon item_display ~1.5 ~0.5 ~0.5 {Rotation:[0f,0f],item_display:"head",Tags:["BF_Flag","BF_Flag1","BF_Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f],scale:[0.7f,0.7f,0.1f]},item:{id:"minecraft:white_banner",Count:1b}}
execute as @s[y_rotation=225..315] run execute align xyz run summon item_display ~1.5 ~0.5 ~0.5 {Rotation:[0f,180f],item_display:"head",Tags:["BF_Flag","BF_Flag2","BF_Init2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f],scale:[0.7f,-0.7f,0.1f]},item:{id:"minecraft:white_banner",Count:1b}}

# Sound effect
execute at @e[type=item_display,tag=BF_Init] run playsound block.wool.place block @a[distance=..5] ~ ~ ~ 1 1.5

execute as @s run data modify entity @e[type=item_display,tag=BF_Init,distance=..4,limit=1] item set from entity @e[type=item,distance=..1,limit=1] Item
execute as @s run data modify entity @e[type=item_display,tag=BF_Init2,distance=..4,limit=1] item set from entity @e[type=item,distance=..1,limit=1] Item

execute as @e[type=item_display,tag=BF_Init] run item modify entity @s container.0 bannerflags:set_count
execute as @e[type=item_display,tag=BF_Init2] run item modify entity @s container.0 bannerflags:set_count

execute at @e[type=item_display,tag=BF_Init] run kill @e[type=item,distance=..2,limit=1]

tag @e remove BF_Init
tag @e remove BF_Init2

# Advancements for placing a flag in each dimension
execute at @s if dimension overworld run advancement grant @s only gurkis:theflagisup
execute at @s if dimension the_nether run advancement grant @s only gurkis:netherlands
execute at @s if dimension the_end run advancement grant @s only gurkis:endlanding

tag @p[tag=bf_placing_banner] remove bf_placing_banner