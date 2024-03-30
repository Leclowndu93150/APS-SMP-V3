execute if score MinutesTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove TimerPokeballs Timer 12000
execute if score MinutesTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove TimerPokeballs-1 Timer 12000
execute if score MinutesTenth TimerSeconds > 0 TimerSeconds run scoreboard players remove MinutesTenth TimerSeconds 1
playsound minecraft:block.lever.click ambient @s ~ ~ ~ 1 2 1
function pokeloot:pokeloot_change_timer