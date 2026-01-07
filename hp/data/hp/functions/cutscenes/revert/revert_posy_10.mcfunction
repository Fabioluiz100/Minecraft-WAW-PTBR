execute if score @s posY matches 100.. run tp @s ~ ~10 ~
execute if score @s posY matches 100.. run scoreboard players remove @s posY 100
execute if score @s posY matches ..-100 run tp @s ~ ~-10 ~
execute if score @s posY matches ..-100 run scoreboard players add @s posY 100

execute at @s unless score @s posY matches -100..100 run function hp:cutscenes/revert/revert_posy_10