execute if score @s posY matches 10.. run tp @s ~ ~1 ~
execute if score @s posY matches 10.. run scoreboard players remove @s posY 10
execute if score @s posY matches ..-10 run tp @s ~ ~-1 ~
execute if score @s posY matches ..-10 run scoreboard players add @s posY 10

execute at @s unless score @s posY matches -10..10 run function hp:cutscenes/revert/revert_posy_1