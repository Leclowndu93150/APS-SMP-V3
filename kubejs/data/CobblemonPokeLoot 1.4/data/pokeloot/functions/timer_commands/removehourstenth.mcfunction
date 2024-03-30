execute if score HoursTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove TimerPokeballs Timer 720000
execute if score HoursTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove TimerPokeballs-1 Timer 720000
execute if score HoursTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove HoursTenth TimerSeconds 1
playsound minecraft:block.lever.click ambient @s ~ ~ ~ 1 2 1
function pokeloot:pokeloot_change_timer