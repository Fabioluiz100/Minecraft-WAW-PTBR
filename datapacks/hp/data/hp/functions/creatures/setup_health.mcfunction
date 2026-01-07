# I swapped from using area effect clouds to giving entities extra health and manually killing them since area effect clouds break their collision detection with other entities.
# This is much nicer and more elegant anyway B)

# 1.16 is really weird. I think maybe the attributes are no longer always sorted the same way which makes writing into them using 'execute store result' impossible :(
# I've worked around it with /attribute but it's not a great solution


# execute store result score @s maxHealth run data get entity @s Attributes[1].Base
execute store result score @s maxHealth run attribute @s minecraft:generic.max_health get

scoreboard players operation @s tmp = @s maxHealth
scoreboard players operation @s creatureHealth = @s tmp
scoreboard players operation @s oldHealth = @s tmp
scoreboard players add @s tmp 100

# execute store result entity @s Attributes[1].Base double 1 run scoreboard players get @s tmp
attribute @s minecraft:generic.max_health modifier add 9161aca4-5622-488a-a577-3b95fe3217d1 max_health 100 add

execute store result entity @s Health float 1 run scoreboard players get @s tmp

# This needs to be done for every creature too, so I just do this here also
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute store result entity @s ArmorItems[3].tag.maxHealth int 1 run scoreboard players get @s maxHealth