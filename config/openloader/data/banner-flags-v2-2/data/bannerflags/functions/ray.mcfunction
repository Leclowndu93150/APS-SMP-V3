execute if block ~ ~ ~ #bannerflags:wall_banners run execute if block ^ ^ ^0.5 #bannerflags:blocks run scoreboard players set #hit vdvcasttemp 1
execute if score #hit vdvcasttemp matches 1 run function bannerflags:hit_block
scoreboard players add #distance vdvcasttemp 1
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..50 positioned ^ ^ ^0.1 run function bannerflags:ray
#particle snowflake ~ ~ ~ 0 0 0 0 1