execute if score Seconds TimerSeconds < 10 TimerSeconds run scoreboard players add Seconds TimerSeconds 1
execute if score Seconds TimerSeconds < 10 TimerSeconds run scoreboard players add TimerPokeballs Timer 20
execute if score Seconds TimerSeconds < 10 TimerSeconds run scoreboard players add TimerPokeballs-1 Timer 20
playsound minecraft:block.lever.click ambient @s ~ ~ ~ 1 2 1
function pokeloot:pokeloot_change_timer