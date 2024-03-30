tellraw @a [{"text":"PokeLoot made by JoaquimPedro201 ","color":"#e78284"},{"text":"[","color":"#ef9f76"},{"text": "⭐","color":"gold"},{"text":"]","color":"#ef9f76"}]
scoreboard objectives add Timer dummy
scoreboard objectives add TimerSeconds dummy
scoreboard objectives add PLOptions trigger {"text":"PokeLootOptions","color":"red"}
scoreboard players enable @a PLOptions
scoreboard players add temp_score TimerSeconds 1
scoreboard players set 0 TimerSeconds 0
scoreboard players set 5 TimerSeconds 5
scoreboard players set 6 TimerSeconds 6
scoreboard players set 9 TimerSeconds 9
scoreboard players set 10 TimerSeconds 10
execute if score temp_score TimerSeconds matches 1 run function pokeloot:settimer