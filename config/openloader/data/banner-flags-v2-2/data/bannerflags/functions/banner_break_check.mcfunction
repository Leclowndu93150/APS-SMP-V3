
execute as @e[type=armor_stand,tag=Flag] at @s unless block ~ ~1 ~ #bannerflags:blocks run function bannerflags:banner_break
execute as @e[type=armor_stand,tag=Flag2] at @s unless block ~ ~1 ~ #bannerflags:blocks run kill @s

execute as @e[type=item_display,tag=BF_Flag1] at @s unless block ~ ~ ~ #bannerflags:blocks run function bannerflags:banner_break
execute as @e[type=item_display,tag=BF_Flag2] at @s unless block ~ ~ ~ #bannerflags:blocks run kill @s

schedule function bannerflags:banner_break_check 3s