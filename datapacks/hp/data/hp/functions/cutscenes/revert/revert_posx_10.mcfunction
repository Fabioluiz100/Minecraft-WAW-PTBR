execute if score @s posX matches 100.. run tp @s ~10 ~ ~
execute if score @s posX matches 100.. run scoreboard players remove @s posX 100
execute if score @s posX matches ..-100 run tp @s ~-10 ~ ~
execute if score @s posX matches ..-100 run scoreboard players add @s posX 100

execute at @s unless score @s posX matches -100..100 run function hp:cutscenes/revert/revert_posx_10