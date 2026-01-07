execute if score @s posZ matches 10000.. run tp @s ~ ~ ~1000
execute if score @s posZ matches 10000.. run scoreboard players remove @s posZ 10000
execute if score @s posZ matches ..-10000 run tp @s ~ ~ ~-1000
execute if score @s posZ matches ..-10000 run scoreboard players add @s posZ 10000

execute at @s unless score @s posZ matches -10000..10000 run function hp:cutscenes/revert/revert_posz_1000