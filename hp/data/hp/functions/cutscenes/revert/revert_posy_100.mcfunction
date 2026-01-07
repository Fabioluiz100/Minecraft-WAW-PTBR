execute if score @s posY matches 1000.. run tp @s ~ ~100 ~
execute if score @s posY matches 1000.. run scoreboard players remove @s posY 1000
execute if score @s posY matches ..-1000 run tp @s ~ ~-100 ~
execute if score @s posY matches ..-1000 run scoreboard players add @s posY 1000

execute at @s unless score @s posY matches -1000..1000 run function hp:cutscenes/revert/revert_posy_100