scoreboard objectives add vdvcasttemp dummy
scoreboard objectives add bf_place_delay dummy

execute unless score #bf_setting bf_place_delay matches 1 run scoreboard players set #bf_setting bf_place_delay 0

function bannerflags:banner_break_check
say "BannerFlags Loaded"