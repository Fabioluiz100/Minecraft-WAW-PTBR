execute if score @s posX matches 1000.. run tp @s ~100 ~ ~
execute if score @s posX matches 1000.. run scoreboard players remove @s posX 1000
execute if score @s posX matches ..-1000 run tp @s ~-100 ~ ~
execute if score @s posX matches ..-1000 run scoreboard players add @s posX 1000

execute at @s unless score @s posX matches -1000..1000 run function hp:cutscenes/revert/revert_posx_100