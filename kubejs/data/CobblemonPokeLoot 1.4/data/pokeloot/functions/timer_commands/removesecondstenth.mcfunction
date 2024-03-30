execute if score SecondsTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove TimerPokeballs Timer 200
execute if score SecondsTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove TimerPokeballs-1 Timer 200
execute if score SecondsTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove SecondsTenth TimerSeconds 1
playsound minecraft:block.lever.click ambient @s ~ ~ ~ 1 2 1
function pokeloot:pokeloot_change_timer