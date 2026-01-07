execute if score @s posZ matches 1.. run tp @s ~ ~ ~0.1
execute if score @s posZ matches 1.. run scoreboard players remove @s posZ 1
execute if score @s posZ matches ..-1 run tp @s ~ ~ ~-0.1
execute if score @s posZ matches ..-1 run scoreboard players add @s posZ 1

execute at @s unless score @s posZ matches -1..1 run function hp:cutscenes/revert/revert_posz_0_1