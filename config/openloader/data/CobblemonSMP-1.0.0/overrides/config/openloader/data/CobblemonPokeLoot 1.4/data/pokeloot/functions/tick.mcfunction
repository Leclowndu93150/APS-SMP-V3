#Pokeball loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:poke_ball",tag:{CustomModelData:1}}}] at @s at @e[type=armor_stand,tag=pokeball_loot,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~1.5 ~ .1 .1 .1 .1 50 normal
execute as @p[nbt={SelectedItem:{id:"cobblemon:poke_ball",tag:{CustomModelData:1}}}] at @s run loot give @s loot pokeloot:blocks/pokeball_loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:poke_ball",tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 2
execute as @p[nbt={SelectedItem:{id:"cobblemon:poke_ball",tag:{CustomModelData:1}}}] at @s run tag @e[type=armor_stand,distance=..5.5,tag=pokeball_loot,limit=1,sort=nearest] add pokeball_no_loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:poke_ball",tag:{CustomModelData:1}}}] at @s run clear @s cobblemon:poke_ball{CustomModelData:1}

#Ultraball loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:ultra_ball",tag:{CustomModelData:1}}}] at @s at @e[type=armor_stand,tag=ultraball_loot,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~1.5 ~ .1 .1 .1 .1 50 normal
execute as @p[nbt={SelectedItem:{id:"cobblemon:ultra_ball",tag:{CustomModelData:1}}}] at @s run loot give @s loot pokeloot:blocks/ultraball_loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:ultra_ball",tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 2
execute as @p[nbt={SelectedItem:{id:"cobblemon:ultra_ball",tag:{CustomModelData:1}}}] at @s run tag @e[type=armor_stand,distance=..5.5,tag=ultraball_loot,limit=1,sort=nearest] add pokeball_no_loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:ultra_ball",tag:{CustomModelData:1}}}] at @s run clear @s cobblemon:ultra_ball{CustomModelData:1}

#Masterball loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:master_ball",tag:{CustomModelData:1}}}] at @s at @e[type=armor_stand,tag=masterball_loot,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~1.5 ~ .1 .1 .1 .1 50 normal
execute as @p[nbt={SelectedItem:{id:"cobblemon:master_ball",tag:{CustomModelData:1}}}] at @s run loot give @s loot pokeloot:blocks/masterball_loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:master_ball",tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 2
execute as @p[nbt={SelectedItem:{id:"cobblemon:master_ball",tag:{CustomModelData:1}}}] at @s run tag @e[type=armor_stand,distance=..5.5,tag=masterball_loot,limit=1,sort=nearest] add pokeball_no_loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:master_ball",tag:{CustomModelData:1}}}] at @s run clear @s cobblemon:master_ball{CustomModelData:1}

#Greatball loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:great_ball",tag:{CustomModelData:1}}}] at @s at @e[type=armor_stand,tag=greatball_loot,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~1.5 ~ .1 .1 .1 .1 50 normal
execute as @p[nbt={SelectedItem:{id:"cobblemon:great_ball",tag:{CustomModelData:1}}}] at @s run loot give @s loot pokeloot:blocks/greatball_loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:great_ball",tag:{CustomModelData:1}}}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 2
execute as @p[nbt={SelectedItem:{id:"cobblemon:great_ball",tag:{CustomModelData:1}}}] at @s run tag @e[type=armor_stand,distance=..5.5,tag=greatball_loot,limit=1,sort=nearest] add pokeball_no_loot
execute as @p[nbt={SelectedItem:{id:"cobblemon:great_ball",tag:{CustomModelData:1}}}] at @s run clear @s cobblemon:great_ball{CustomModelData:1}

#Pokeball loot
scoreboard players add @e[type=armor_stand,tag=pokeball_loot,tag=pokeball_no_loot] Timer 1
execute as @e[type=armor_stand,tag=pokeball_loot,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run data merge entity @s {ArmorItems:[{},{},{},{id:"cobblemon:poke_ball",Count:1b,tag:{CustomModelData:1}}]}
execute as @e[type=armor_stand,tag=pokeball_loot,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run tag @s remove pokeball_no_loot
execute as @e[type=armor_stand,tag=pokeball_loot,tag=!pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run scoreboard players set @s Timer 0

#Ultraball loot
scoreboard players add @e[type=armor_stand,tag=ultraball_loot,tag=pokeball_no_loot] Timer 1
execute as @e[type=armor_stand,tag=ultraball_loot,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run data merge entity @s {ArmorItems:[{},{},{},{id:"cobblemon:ultra_ball",Count:1b,tag:{CustomModelData:1}}]}
execute as @e[type=armor_stand,tag=ultraball_loot,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run tag @s remove pokeball_no_loot
execute as @e[type=armor_stand,tag=ultraball_loot,tag=!pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run scoreboard players set @s Timer 0

#Masterball loot
scoreboard players add @e[type=armor_stand,tag=masterball_loot,tag=pokeball_no_loot] Timer 1
execute as @e[type=armor_stand,tag=masterball_loot,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run data merge entity @s {ArmorItems:[{},{},{},{id:"cobblemon:master_ball",Count:1b,tag:{CustomModelData:1}}]}
execute as @e[type=armor_stand,tag=masterball_loot,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run tag @s remove pokeball_no_loot
execute as @e[type=armor_stand,tag=masterball_loot,tag=!pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run scoreboard players set @s Timer 0

#Greatball loot
scoreboard players add @e[type=armor_stand,tag=greatball_loot,tag=pokeball_no_loot] Timer 1
execute as @e[type=armor_stand,tag=greatball_loot,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run data merge entity @s {ArmorItems:[{},{},{},{id:"cobblemon:great_ball",Count:1b,tag:{CustomModelData:1}}]}
execute as @e[type=armor_stand,tag=greatball_loot,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run tag @s remove pokeball_no_loot
execute as @e[type=armor_stand,tag=greatball_loot,tag=!pokeball_no_loot] at @s if score @s Timer = TimerPokeballs Timer run scoreboard players set @s Timer 0

#TimerSeconds
execute if score Seconds TimerSeconds > 9 TimerSeconds run scoreboard players set Seconds TimerSeconds 9
execute if score SecondsTenth TimerSeconds > 5 TimerSeconds run scoreboard players set SecondsTenth TimerSeconds 5
execute if score Minutes TimerSeconds > 9 TimerSeconds run scoreboard players set Minutes TimerSeconds 9
execute if score MinutesTenth TimerSeconds > 5 TimerSeconds run scoreboard players set MinutesTenth TimerSeconds 5
execute if score Hours TimerSeconds > 9 TimerSeconds run scoreboard players set Hours TimerSeconds 9
execute if score HoursTenth TimerSeconds > 9 TimerSeconds run scoreboard players set HoursTenth TimerSeconds 9

#Particles/Timer on Pokeloot System
bossbar set minecraft:1 players @a
execute if score ShowTimer PLOptions matches 1 run bossbar set minecraft:1 visible false
execute store result bossbar minecraft:1 max run scoreboard players get TimerPokeballs Timer
execute if score ShowTimer PLOptions matches 0 run execute as @e[type=minecraft:armor_stand,tag=pokeball_no_loot] at @s run execute store result bossbar minecraft:1 value run scoreboard players get @s Timer
execute if score ShowTimer PLOptions matches 0 run execute as @e[type=minecraft:armor_stand,tag=pokeball_no_loot] at @s if entity @a[distance=..3] run bossbar set minecraft:1 visible true
execute if score ShowTimer PLOptions matches 0 run execute as @e[type=minecraft:armor_stand,tag=pokeball_no_loot] at @s if entity @a[distance=3..] run bossbar set minecraft:1 players @a[distance=..3]
execute if score ShowTimer PLOptions matches 0 run execute as @e[type=minecraft:armor_stand,tag=pokeball_no_loot] at @s if score @s Timer = TimerPokeballs-1 Timer run bossbar set minecraft:1 visible false
execute if score ShowParticles PLOptions matches 0 run execute as @e[type=minecraft:armor_stand,tag=pokeball_no_loot] at @s if entity @a[distance=..3] run particle minecraft:happy_villager ~ ~1.425 ~ .01 .01 .01 .1 1 normal
#execute if score ShowTimer PLOptions matches 0 run execute as @e[type=minecraft:armor_stand,tag=pokeball_no_loot] at @s run title @a[distance=..3] actionbar [{"score":{"name":"@s","objective":"Timer"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"TimerPokeballs","objective":"Timer"},"color":"yellow"},{"text":" ticks","color":"yellow"}]

#Spawn pokeballs manually
execute as @e[type=armor_stand,nbt={Tags:["pokeball_loot_spawner"]}] at @s run place template pokeloot:pokeball ~ ~-1 ~
execute as @e[type=armor_stand,nbt={Tags:["pokeball_loot_spawner"]}] at @s run kill @s
execute as @e[type=armor_stand,nbt={Tags:["ultraball_loot_spawner"]}] at @s run place template pokeloot:ultraball ~ ~-1 ~
execute as @e[type=armor_stand,nbt={Tags:["ultraball_loot_spawner"]}] at @s run kill @s
execute as @e[type=armor_stand,nbt={Tags:["masterball_loot_spawner"]}] at @s run place template pokeloot:masterball ~ ~-1 ~
execute as @e[type=armor_stand,nbt={Tags:["masterball_loot_spawner"]}] at @s run kill @s
execute as @e[type=armor_stand,nbt={Tags:["greatball_loot_spawner"]}] at @s run place template pokeloot:greatball ~ ~-1 ~
execute as @e[type=armor_stand,nbt={Tags:["greatball_loot_spawner"]}] at @s run kill @s

#3d Timer
execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] if entity @a[distance=3..,tag=timer_3d_temp] run effect clear @a[distance=3..] minecraft:slowness
execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] if entity @a[distance=3..,tag=timer_3d_temp] run playsound minecraft:block.barrel.close ambient @a[distance=3..] ~ ~ ~ 1 0 1
execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] if entity @a[distance=3..,tag=timer_3d_temp] run kill @e[type=text_display,distance=..3]
execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] if entity @a[distance=3..,tag=timer_3d_temp] run kill @e[type=interaction,distance=..3]
execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] if entity @a[distance=3..,tag=timer_3d_temp] run kill @e[type=minecraft:armor_stand,tag=timer_armor_stand,sort=nearest]
execute unless entity @e[type=minecraft:armor_stand,tag=timer_armor_stand] if entity @a[tag=timer_3d_temp] run tag @a remove timer_3d_temp
execute at @e[type=minecraft:armor_stand,tag=timer_armor_stand] if entity @a[distance=..3] run effect give @a[distance=..3] minecraft:slowness infinite 1 true

data merge entity @e[type=text_display,limit=1,tag=hourstenth_timer_3d] {text:'{"score":{"name":"HoursTenth","objective":"TimerSeconds"}}'}
data merge entity @e[type=text_display,limit=1,tag=hours_timer_3d] {text:'{"score":{"name":"Hours","objective":"TimerSeconds"}}'}
data merge entity @e[type=text_display,limit=1,tag=minutestenth_timer_3d] {text:'{"score":{"name":"MinutesTenth","objective":"TimerSeconds"}}'}
data merge entity @e[type=text_display,limit=1,tag=minutes_timer_3d] {text:'{"score":{"name":"Minutes","objective":"TimerSeconds"}}'}
data merge entity @e[type=text_display,limit=1,tag=secondstenth_timer_3d] {text:'{"score":{"name":"SecondsTenth","objective":"TimerSeconds"}}'}
data merge entity @e[type=text_display,limit=1,tag=seconds_timer_3d] {text:'{"score":{"name":"Seconds","objective":"TimerSeconds"}}'}

#+ Interactions
execute as @e[type=minecraft:interaction,tag=+_hourstenth_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/addhourstenth
execute as @e[type=minecraft:interaction,tag=+_hours_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/addhours
execute as @e[type=minecraft:interaction,tag=+_minutestenth_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/addminutestenth
execute as @e[type=minecraft:interaction,tag=+_minutes_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/addminutes
execute as @e[type=minecraft:interaction,tag=+_secondstenth_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/addsecondstenth
execute as @e[type=minecraft:interaction,tag=+_seconds_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/addseconds

#- Interactions
execute as @e[type=minecraft:interaction,tag=-_hourstenth_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/removehourstenth
execute as @e[type=minecraft:interaction,tag=-_hours_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/removehours
execute as @e[type=minecraft:interaction,tag=-_minutestenth_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/removeminutestenth
execute as @e[type=minecraft:interaction,tag=-_minutes_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/removeminutes
execute as @e[type=minecraft:interaction,tag=-_secondstenth_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/removesecondstenth
execute as @e[type=minecraft:interaction,tag=-_seconds_timer_3d_interaction] on target run function pokeloot:timer_commands_3d/removeseconds

execute as @e[type=minecraft:interaction] run data remove entity @s interaction

#Options

# on on on
execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 if score ShowParticles PLOptions matches 0 if score ShowTimer PLOptions matches 0 if score TimerInterface PLOptions matches 0 run tellraw @a[limit=1,scores={PLOptions=1}] ["",{"text":"\n"},{"text":"PokeLoots Options:","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25a0","color":"white"},{"text":" [","color":"gray"},{"text":"Show Particles","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowParticles PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to unshow particles when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"ON","color":"green"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Show Timer","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowTimer PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to unshow a timer when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"ON","color":"green"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Timer Interface","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add TimerInterface PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to choose the 3d interface to change the timer."}},{"text":"]","color":"gray"},{"text":" [","color":"gray"},{"text":"TEXT","color":"green"},{"text":"]","color":"gray"}]
# on off on
execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 if score ShowParticles PLOptions matches 0 if score ShowTimer PLOptions matches 1 if score TimerInterface PLOptions matches 0 run tellraw @a[limit=1,scores={PLOptions=1}] ["",{"text":"\n"},{"text":"PokeLoots Options:","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25a0","color":"white"},{"text":" [","color":"gray"},{"text":"Show Particles","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowParticles PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to unshow particles when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"ON","color":"green"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Show Timer","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowTimer PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to show a timer when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Timer Interface","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add TimerInterface PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to choose the 3d interface to change the timer."}},{"text":"]","color":"gray"},{"text":" [","color":"gray"},{"text":"TEXT","color":"green"},{"text":"]","color":"gray"}]
# on off off
execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 if score ShowParticles PLOptions matches 0 if score ShowTimer PLOptions matches 1 if score TimerInterface PLOptions matches 1 run tellraw @a[limit=1,scores={PLOptions=1}] ["",{"text":"\n"},{"text":"PokeLoots Options:","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25a0","color":"white"},{"text":" [","color":"gray"},{"text":"Show Particles","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowParticles PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to unshow particles when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"ON","color":"green"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Show Timer","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowTimer PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to show a timer when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Timer Interface","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add TimerInterface PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to choose the text interface to change the timer."}},{"text":"]","color":"gray"},{"text":" [","color":"gray"},{"text":"3D","color":"red"},{"text":"]","color":"gray"}]
# off on on
execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 if score ShowParticles PLOptions matches 1 if score ShowTimer PLOptions matches 0 if score TimerInterface PLOptions matches 0 run tellraw @a[limit=1,scores={PLOptions=1}] ["",{"text":"\n"},{"text":"PokeLoots Options:","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25a0","color":"white"},{"text":" [","color":"gray"},{"text":"Show Particles","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowParticles PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to show particles when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Show Timer","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowTimer PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to unshow a timer when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"ON","color":"green"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Timer Interface","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add TimerInterface PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to choose the 3d interface to change the timer."}},{"text":"]","color":"gray"},{"text":" [","color":"gray"},{"text":"TEXT","color":"green"},{"text":"]","color":"gray"}]
# off off on
execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 if score ShowParticles PLOptions matches 1 if score ShowTimer PLOptions matches 1 if score TimerInterface PLOptions matches 0 run tellraw @a[limit=1,scores={PLOptions=1}] ["",{"text":"\n"},{"text":"PokeLoots Options:","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25a0","color":"white"},{"text":" [","color":"gray"},{"text":"Show Particles","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowParticles PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to show particles when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Show Timer","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowTimer PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to show a timer when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Timer Interface","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add TimerInterface PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to choose the 3d interface to change the timer."}},{"text":"]","color":"gray"},{"text":" [","color":"gray"},{"text":"TEXT","color":"green"},{"text":"]","color":"gray"}]

# on on off
execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 if score ShowParticles PLOptions matches 0 if score ShowTimer PLOptions matches 0 if score TimerInterface PLOptions matches 1 run tellraw @a[limit=1,scores={PLOptions=1}] ["",{"text":"\n"},{"text":"PokeLoots Options:","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25a0","color":"white"},{"text":" [","color":"gray"},{"text":"Show Particles","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowParticles PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to unshow particles when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"ON","color":"green"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Show Timer","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowTimer PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to unshow a timer when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"ON","color":"green"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Timer Interface","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add TimerInterface PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to choose the text interface to change the timer."}},{"text":"]","color":"gray"},{"text":" [","color":"gray"},{"text":"3D","color":"red"},{"text":"]","color":"gray"}]

# off on off
execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 if score ShowParticles PLOptions matches 1 if score ShowTimer PLOptions matches 0 if score TimerInterface PLOptions matches 1 run tellraw @a[limit=1,scores={PLOptions=1}] ["",{"text":"\n"},{"text":"PokeLoots Options:","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25a0","color":"white"},{"text":" [","color":"gray"},{"text":"Show Particles","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowParticles PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to show particles when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Show Timer","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowTimer PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to unshow a timer when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"ON","color":"green"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Timer Interface","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add TimerInterface PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to choose the text interface to change the timer."}},{"text":"]","color":"gray"},{"text":" [","color":"gray"},{"text":"3D","color":"red"},{"text":"]","color":"gray"}]

# off off off
execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 if score ShowParticles PLOptions matches 1 if score ShowTimer PLOptions matches 1 if score TimerInterface PLOptions matches 1 run tellraw @a[limit=1,scores={PLOptions=1}] ["",{"text":"\n"},{"text":"PokeLoots Options:","bold":true,"color":"red"},{"text":"\n"},{"text":"\u25a0","color":"white"},{"text":" [","color":"gray"},{"text":"Show Particles","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowParticles PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to show particles when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Show Timer","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add ShowTimer PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to show a timer when near a pokeloot with no loot."}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red"},{"text":"]","color":"gray"},{"text":"\n\u25a0"},{"text":" [","color":"gray"},{"text":"Timer Interface","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players add TimerInterface PLOptions 1"},"hoverEvent":{"action":"show_text","contents":"Left click to choose the text interface to change the timer."}},{"text":"]","color":"gray"},{"text":" [","color":"gray"},{"text":"3D","color":"red"},{"text":"]","color":"gray"}]

execute if score @a[limit=1,scores={PLOptions=1}] PLOptions matches 1 run scoreboard players reset @a[limit=1,scores={PLOptions=1}] PLOptions
scoreboard players enable @a PLOptions
execute if score ShowParticles PLOptions matches 2 run scoreboard players set ShowParticles PLOptions 0
execute if score ShowTimer PLOptions matches 2 run scoreboard players set ShowTimer PLOptions 0
execute if score TimerInterface PLOptions matches 2 run scoreboard players set TimerInterface PLOptions 0


#Old commands for timer

#execute if score Minutes TimerSeconds > 9 TimerSeconds run scoreboard players add TimerPokeballs Timer 1200
#execute if score Minutes TimerSeconds > 9 TimerSeconds run scoreboard players add TimerPokeballs-1 Timer 1200
#execute if score MinutesTenth TimerSeconds > 5 TimerSeconds run scoreboard players add TimerPokeballs Timer 12000
#execute if score MinutesTenth TimerSeconds > 5 TimerSeconds run scoreboard players add TimerPokeballs-1 Timer 12000
#execute if score Hours TimerSeconds > 9 TimerSeconds run scoreboard players remove TimerPokeballs Timer 648000
#execute if score Hours TimerSeconds > 9 TimerSeconds run scoreboard players remove TimerPokeballs-1 Timer 648000
#execute if score Hours TimerSeconds > 9 TimerSeconds run scoreboard players add TimerPokeballs Timer 720000
#execute if score Hours TimerSeconds > 9 TimerSeconds run scoreboard players add TimerPokeballs-1 Timer 720000

#execute if score Seconds TimerSeconds > 9 TimerSeconds run scoreboard players add SecondsTenth TimerSeconds 1
#execute if score Seconds TimerSeconds > 9 TimerSeconds run scoreboard players set Seconds TimerSeconds 0
#execute if score SecondsTenth TimerSeconds > 5 TimerSeconds run scoreboard players add Minutes TimerSeconds 1
#execute if score SecondsTenth TimerSeconds > 5 TimerSeconds run scoreboard players set SecondsTenth TimerSeconds 0
#execute if score Minutes TimerSeconds > 9 TimerSeconds run scoreboard players add MinutesTenth TimerSeconds 1
#execute if score Minutes TimerSeconds > 9 TimerSeconds run scoreboard players set Minutes TimerSeconds 0
#execute if score MinutesTenth TimerSeconds > 5 TimerSeconds run scoreboard players add Hours TimerSeconds 1
#execute if score MinutesTenth TimerSeconds > 5 TimerSeconds run scoreboard players set MinutesTenth TimerSeconds 0
#execute if score Hours TimerSeconds > 9 TimerSeconds run scoreboard players add HoursTenth TimerSeconds 1
#execute if score Hours TimerSeconds > 9 TimerSeconds run scoreboard players set Hours TimerSeconds 0
#execute if score HoursTenth TimerSeconds > 9 TimerSeconds run scoreboard players set HoursTenth TimerSeconds 9

#execute if score HoursTenth TimerSeconds < 0 TimerSeconds run scoreboard players set HoursTenth TimerSeconds 0
#execute if score Hours TimerSeconds < 0 TimerSeconds run scoreboard players set Hours TimerSeconds 0
#execute if score Minutes TimerSeconds < 0 TimerSeconds run scoreboard players set Minutes TimerSeconds 0
#execute if score MinutesTenth TimerSeconds < 0 TimerSeconds run scoreboard players set MinutesTenth TimerSeconds 0
#execute if score Seconds TimerSeconds < 0 TimerSeconds run scoreboard players set Seconds TimerSeconds 0
#execute if score SecondsTenth TimerSeconds < 0 TimerSeconds run scoreboard players set SecondsTenth TimerSeconds 0