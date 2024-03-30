
# Remove one item from the player
execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand bannerflags:remove_one

execute as @e[type=item_display,tag=BF_Flag1,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] run data merge entity @s {Tags:["BF_Flag","BF_Flag1","BF_BigFlag"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.575f,-0.5f,0.05f],scale:[1.15f,1.15f,0.1f]},start_interpolation:0,interpolation_duration:15}
execute as @e[type=item_display,tag=BF_Flag2,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] run data merge entity @s {Tags:["BF_Flag","BF_Flag2","BF_BigFlag"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.575f,0.5f,0.05f],scale:[1.15f,-1.15f,0.1f]},start_interpolation:0,interpolation_duration:15}

playsound block.amethyst_block.chime block @s ~ ~ ~ 100 0.8

advancement revoke @a only bannerflags:bannerscale2
advancement revoke @a only bannerflags:bannerscale2_standing
advancement grant @s only gurkis:importantflag