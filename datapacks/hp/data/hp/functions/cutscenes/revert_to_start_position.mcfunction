# In 1.13 we could do this. In 1.14+ the armor stand is unloaded immediately. Instead we now tp the player relatively and compare to see if we overshot or undershot and then adjust
#############################
# Summon armorstand, read and write start location, tp player
# summon minecraft:armor_stand 10010 66 12 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cutScenePlayerStartPos"]}
# 
# execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Pos[0] double 0.00001 run scoreboard players get @s posX
# execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Pos[1] double 0.00001 run scoreboard players get @s posY
# execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Pos[2] double 0.00001 run scoreboard players get @s posZ
# execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Rotation[0] float 1 run scoreboard players get @s rotY
# execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Rotation[1] float 1 run scoreboard players get @s rotX
# 
# tp @s @e[tag=cutScenePlayerStartPos,limit=1]
# kill @e[tag=cutScenePlayerStartPos,limit=1]
#############################

tp @s 0 0 0

# Adjust posX 1000
execute at @s run function hp:cutscenes/revert/revert_posx_1000
# Adjust posX 100
execute at @s run function hp:cutscenes/revert/revert_posx_100
# Adjust posX 10
execute at @s run function hp:cutscenes/revert/revert_posx_10
# Adjust posX 1
execute at @s run function hp:cutscenes/revert/revert_posx_1
# Adjust posX 0.1
execute at @s run function hp:cutscenes/revert/revert_posx_0_1

# Adjust posY 1000
execute at @s run function hp:cutscenes/revert/revert_posy_1000
# Adjust posY 100
execute at @s run function hp:cutscenes/revert/revert_posy_100
# Adjust posY 10
execute at @s run function hp:cutscenes/revert/revert_posy_10
# Adjust posY 1
execute at @s run function hp:cutscenes/revert/revert_posy_1
# Adjust posY 0.1
execute at @s run function hp:cutscenes/revert/revert_posy_0_1

execute at @s run tp @s ~ ~.1 ~

# Adjust posZ 1000
execute at @s run function hp:cutscenes/revert/revert_posz_1000
# Adjust posZ 100
execute at @s run function hp:cutscenes/revert/revert_posz_100
# Adjust posZ 10
execute at @s run function hp:cutscenes/revert/revert_posz_10
# Adjust posZ 1
execute at @s run function hp:cutscenes/revert/revert_posz_1
# Adjust posZ 0.1
execute at @s run function hp:cutscenes/revert/revert_posz_0_1

# Just for rotation now
summon minecraft:armor_stand 10010 66 12 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cutScenePlayerStartPos"]}
execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Rotation[0] float 1 run scoreboard players get @s rotY
execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Rotation[1] float 1 run scoreboard players get @s rotX
execute at @s positioned ~ ~ ~ rotated as @e[tag=cutScenePlayerStartPos,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=cutScenePlayerStartPos]