execute if score @s posZ matches 10.. run tp @s ~ ~ ~1
execute if score @s posZ matches 10.. run scoreboard players remove @s posZ 10
execute if score @s posZ matches ..-10 run tp @s ~ ~ ~-1
execute if score @s posZ matches ..-10 run scoreboard players add @s posZ 10

execute at @s unless score @s posZ matches -10..10 run function hp:cutscenes/revert/revert_posz_1