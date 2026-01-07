execute store result score tmp tmp run data get entity @s Rotation[0]

execute if score tmp tmp matches -180..-135 run scoreboard players set tmp tmp2 -180
execute if score tmp tmp matches -134..-45 run scoreboard players set tmp tmp2 -90
execute if score tmp tmp matches -44..45 run scoreboard players set tmp tmp2 0
execute if score tmp tmp matches 46..135 run scoreboard players set tmp tmp2 90
execute if score tmp tmp matches 136..180 run scoreboard players set tmp tmp2 -180

execute store result entity @s Rotation[0] float 1 run scoreboard players get tmp tmp2


scoreboard players set tmp tmp2 0
execute store result entity @s Rotation[1] float 1 run scoreboard players get tmp tmp2