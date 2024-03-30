execute at @e run kill @e[type=minecraft:armor_stand,tag=Flag]
execute at @e run kill @e[type=minecraft:armor_stand,tag=Flag2]
execute at @e run kill @e[type=minecraft:item_display,tag=BF_Flag]
tellraw @s "<BannerFlags> All banner flags have been removed. Doing this does not drop the banner."