execute if score TimerInterface PLOptions matches 0 run tellraw @a ["",{"text":"Left click to change the time for the pokeloots to respawn:","color":"yellow"},{"text":"\n"},{"text":"---------------------------------------------------","color":"gray"},{"text":"\n                        "},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/addhourstenth"}},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/addhours"}},{"text":"  ","bold":true,"color":"green"},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/addminutestenth"}},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/addminutes"}},{"text":" ","bold":true,"color":"green"},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/addsecondstenth"}},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/addseconds"}},{"text":"\n                        "},{"score":{"name":"HoursTenth","objective":"TimerSeconds"}},{"score":{"name":"Hours","objective":"TimerSeconds"}},{"text":"h "},{"score":{"name":"MinutesTenth","objective":"TimerSeconds"}},{"score":{"name":"Minutes","objective":"TimerSeconds"}},{"text":"m "},{"score":{"name":"SecondsTenth","objective":"TimerSeconds"}},{"score":{"name":"Seconds","objective":"TimerSeconds"}},{"text":"s\n"},{"text":"                   ","bold":true,"color":"red"},{"text":"-","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/removehourstenth"}},{"text":"-","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/removehours"}},{"text":"  ","bold":true,"color":"red"},{"text":"-","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/removeminutestenth"}},{"text":"-","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/removeminutes"}},{"text":" ","bold":true,"color":"red"},{"text":"-","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/removesecondstenth"}},{"text":"-","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function pokeloot:timer_commands/removeseconds"}},{"text":"\n"},{"text":"---------------------------------------------------","color":"gray"}]

execute if score TimerInterface PLOptions matches 1 run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["timer_armor_stand"]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run tag @a[distance=..3,limit=1] add timer_3d_temp
execute if score TimerInterface PLOptions matches 1 run execute store result entity @e[type=armor_stand,tag=timer_armor_stand,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute if score TimerInterface PLOptions matches 1 run data modify entity @e[type=armor_stand,tag=timer_armor_stand,limit=1] Rotation[0] set from entity @s Rotation[0]
execute if score TimerInterface PLOptions matches 1 run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2 1

execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^ ^2 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["text_timer_3d"],text:'{"text":"Right click to change the time for the pokeloots to respawn:","color":"yellow","bold":false,"italic":false}',background:16777215}
# Text HH:MM:SS
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^.8 ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["hourstenth_timer_3d"],text:'{"text":"0"}',background:16775136}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^.6 ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["hours_timer_3d"],text:'{"text":"0"}',background:16775136}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^.35 ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["H_timer_3d"],text:'{"text":"h "}',background:16775136}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^ ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["minutestenth_timer_3d"],text:'{"text":"0"}',background:16775136}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^-.2 ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["minutes_timer_3d"],text:'{"text":"0"}',background:16775136}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^-.45 ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["M_timer_3d"],text:'{"text":"m "}',background:16775136}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^-.8 ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["secondstenth_timer_3d"],text:'{"text":"0"}',background:16775136}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^-1 ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["seconds_timer_3d"],text:'{"text":"0"}',background:16775136}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon text_display ^-1.2 ^1.5 ^1.5 {billboard:"vertical",shadow:1b,alignment:"center",Tags:["S_timer_3d"],text:'{"text":"s"}',background:16775136}

#+ Interactions
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^.8 ^1.7 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["+_hourstenth_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"+","color":"green","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^.6 ^1.7 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["+_hours_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"+","color":"green","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^ ^1.7 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["+_minutestenth_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"+","color":"green","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^-.2 ^1.7 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["+_minutes_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"+","color":"green","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^-.8 ^1.7 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["+_secondstenth_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"+","color":"green","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^-1 ^1.7 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["+_seconds_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"+","color":"green","italic":false}',background:16777215}]}

#- Interactions
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^.8 ^1.3 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["-_hourstenth_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"-","color":"red","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^.6 ^1.3 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["-_hours_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"-","color":"red","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^ ^1.3 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["-_minutestenth_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"-","color":"red","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^-.2 ^1.3 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["-_minutes_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"-","color":"red","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^-.8 ^1.3 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["-_secondstenth_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"-","color":"red","italic":false}',background:16777215}]}
execute if score TimerInterface PLOptions matches 1 run execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] run summon interaction ^-1 ^1.3 ^1.5 {width:.2f,height:.2f,response:1b,Tags:["-_seconds_timer_3d_interaction"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",shadow:1b,alignment:"center",text:'{"text":"-","color":"red","italic":false}',background:16777215}]}