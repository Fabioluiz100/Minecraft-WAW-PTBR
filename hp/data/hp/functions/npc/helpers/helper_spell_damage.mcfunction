# Snowball can't do damage so I have to do it manually now (1.15+)
execute store result score health tmp run data get entity @s Health 10
scoreboard players operation health tmp -= damage tmp
execute store result entity @s Health float 0.1 run scoreboard players get health tmp