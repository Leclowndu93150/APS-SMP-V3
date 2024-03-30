tag @s add vdvray
tag @s add bf_placing_banner
scoreboard players set #hit vdvcasttemp 0
scoreboard players set #distance vdvcasttemp 0
execute if score #bf_setting bf_place_delay matches 1 run execute as @s run schedule function bannerflags:start_ray 0.2s
execute if score #bf_setting bf_place_delay matches 0 run execute as @s run function bannerflags:start_ray