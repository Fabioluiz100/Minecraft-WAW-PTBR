execute if score @s posZ matches 100.. run tp @s ~ ~ ~10
execute if score @s posZ matches 100.. run scoreboard players remove @s posZ 100
execute if score @s posZ matches ..-100 run tp @s ~ ~ ~-10
execute if score @s posZ matches ..-100 run scoreboard players add @s posZ 100

execute at @s unless score @s posZ matches -100..100 run function hp:cutscenes/revert/revert_posz_10