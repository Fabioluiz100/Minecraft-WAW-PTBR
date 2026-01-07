execute if score @s posY matches 10000.. run tp @s ~ ~1000 ~
execute if score @s posY matches 10000.. run scoreboard players remove @s posY 10000
execute if score @s posY matches ..-10000 run tp @s ~ ~-1000 ~
execute if score @s posY matches ..-10000 run scoreboard players add @s posY 10000

execute at @s unless score @s posY matches -10000..10000 run function hp:cutscenes/revert/revert_posy_1000