execute if score @s posX matches 1.. run tp @s ~0.1 ~ ~
execute if score @s posX matches 1.. run scoreboard players remove @s posX 1
execute if score @s posX matches ..-1 run tp @s ~-0.1 ~ ~
execute if score @s posX matches ..-1 run scoreboard players add @s posX 1

execute at @s unless score @s posX matches -1..1 run function hp:cutscenes/revert/revert_posx_0_1