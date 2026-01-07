execute if score @s posZ matches 1000.. run tp @s ~ ~ ~100
execute if score @s posZ matches 1000.. run scoreboard players remove @s posZ 1000
execute if score @s posZ matches ..-1000 run tp @s ~ ~ ~-100
execute if score @s posZ matches ..-1000 run scoreboard players add @s posZ 1000

execute at @s unless score @s posZ matches -1000..1000 run function hp:cutscenes/revert/revert_posz_100