
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run execute if entity @e[type=item_display,tag=BF_Flag1,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] run function bannerflags:banner_scale
advancement revoke @a only bannerflags:bannerscale2