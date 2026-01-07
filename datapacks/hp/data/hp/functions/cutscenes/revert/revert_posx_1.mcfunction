execute if score @s posX matches 10.. run tp @s ~1 ~ ~
execute if score @s posX matches 10.. run scoreboard players remove @s posX 10
execute if score @s posX matches ..-10 run tp @s ~-1 ~ ~
execute if score @s posX matches ..-10 run scoreboard players add @s posX 10

execute at @s unless score @s posX matches -10..10 run function hp:cutscenes/revert/revert_posx_1