execute if score @s posX matches 10000.. run tp @s ~1000 ~ ~
execute if score @s posX matches 10000.. run scoreboard players remove @s posX 10000
execute if score @s posX matches ..-10000 run tp @s ~-1000 ~ ~
execute if score @s posX matches ..-10000 run scoreboard players add @s posX 10000

execute at @s unless score @s posX matches -10000..10000 run function hp:cutscenes/revert/revert_posx_1000