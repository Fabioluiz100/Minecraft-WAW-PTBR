######################
# On damage to Enemy #
######################
# I need to check both 10s and 9s to prevent issues if the player is playing with high latency

# Set bossbarCreatureFocus per player
execute as @s[scores={playerID=1}] run tag @e[tag=bossBarCreatureFocus] remove bossBarCreatureFocus
execute as @s[scores={playerID=1}] run tag @e[limit=1,sort=nearest,tag=creature] add bossBarCreatureFocus
execute as @s[scores={playerID=1}] run scoreboard players set @p[scores={playerID=1}] creatureFocus 150

execute as @s[scores={playerID=2}] run tag @e[tag=disabledPlayer2bossBarCreatureFocus] remove disabledPlayer2bossBarCreatureFocus
execute as @s[scores={playerID=2}] run tag @e[limit=1,sort=nearest,tag=creature] add disabledPlayer2bossBarCreatureFocus
execute as @s[scores={playerID=2}] run scoreboard players set @p[scores={playerID=2}] creatureFocus 150

execute as @s[scores={playerID=3}] run tag @e[tag=disabledPlayer3bossBarCreatureFocus] remove disabledPlayer3bossBarCreatureFocus
execute as @s[scores={playerID=3}] run tag @e[limit=1,sort=nearest,tag=creature] add disabledPlayer3bossBarCreatureFocus
execute as @s[scores={playerID=3}] run scoreboard players set @p[scores={playerID=3}] creatureFocus 150

execute as @s[scores={playerID=4}] run tag @e[tag=disabledPlayer4bossBarCreatureFocus] remove disabledPlayer4bossBarCreatureFocus
execute as @s[scores={playerID=4}] run tag @e[limit=1,sort=nearest,tag=creature] add disabledPlayer4bossBarCreatureFocus
execute as @s[scores={playerID=4}] run scoreboard players set @p[scores={playerID=4}] creatureFocus 150

execute as @s[scores={playerID=1}] as @p[scores={playerID=1}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=2}] as @p[scores={playerID=2}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=3}] as @p[scores={playerID=3}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=4}] as @p[scores={playerID=4}] run tag @s add spellUpdateBossbar

# Set damagedByID so the creature can detect who killed it with fairly high certainty
execute at @s run scoreboard players operation @e[tag=creature,distance=..3.5] damagedByID = @s playerID


# Aggro troll
execute at @s as @e[limit=1,sort=nearest,tag=creature] as @s[tag=trollCreature] at @s run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],Owner:[I;0,0,0,5],Tags:["trollAggro"]}
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[0] int 1 run data get entity @p Owner[0]
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[1] int 1 run data get entity @p Owner[1]
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[2] int 1 run data get entity @p Owner[2]
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] store result entity @s Owner[3] int 1 run data get entity @p Owner[3]
execute at @s as @e[tag=trollAggro,limit=1,sort=nearest] run tag @s remove trollAggro



tag @s add bombardaExplode