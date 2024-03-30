execute as @e[type=minecraft:armor_stand,tag=Flag] run data merge entity @e[type=minecraft:armor_stand,tag=Flag,sort=nearest,limit=1] {Marker:1b}
execute as @e[type=minecraft:armor_stand,tag=Flag2] run data merge entity @e[type=minecraft:armor_stand,tag=Flag2,sort=nearest,limit=1] {Marker:1b}

tellraw @s "<BannerFlags> All banner flags in player's render distance have been updated."