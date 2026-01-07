# This function is intended to fix some strange issues that sometimes come up on servers, where the command blocks stop executing and need to be reset or where the playerID is strangely set to 0 while all other scores remain intact.

# Detect if the command blocks have stopped executing
execute unless score serverTimer1 global = serverTimer2 global unless score serverRestartCommandBlocks global matches 1.. run scoreboard players set serverRestartCommandBlocks global 3

execute if score serverRestartCommandBlocks global matches 2 run scoreboard players operation serverTimer1 global = serverTimer2 global
execute if score serverRestartCommandBlocks global matches 2 run data merge block 10010 65 12 {auto:0b}
execute if score serverRestartCommandBlocks global matches 1 run data merge block 10010 65 12 {auto:1b}
execute if score serverRestartCommandBlocks global matches 1.. run scoreboard players remove serverRestartCommandBlocks global 1
scoreboard players add serverTimer1 global 1

# If players ID has somehow been set to 0
execute as @p[tag=playerID1] unless entity @p[scores={playerID=1}] run scoreboard players set @s playerID 1
execute as @p[tag=playerID2] unless entity @p[scores={playerID=2}] run scoreboard players set @s playerID 2
execute as @p[tag=playerID3] unless entity @p[scores={playerID=3}] run scoreboard players set @s playerID 3
execute as @p[tag=playerID4] unless entity @p[scores={playerID=4}] run scoreboard players set @s playerID 4

# Check if objectives have been completely lost which can happen sometimes if the game crashes.
execute as 00000000-0000-0003-0000-000000000007 unless entity @s[scores={global=1}] run tellraw @a ["",{"text":"\n\n Oh céus!","bold":true,"color":"dark_red"},{"text":"\n Devido a um bug, todos os valores do placar necessários para o funcionamento do mapa foram corrompidos. Não há como recuperar esse bug, então você precisará reinstalar o mapa se quiser continuar jogando. Temos comandos que podem ajudar você a voltar aproximadamente para o mesmo ponto em que estava no mapa. Peça ajuda em nosso servidor do Discord."}]
# execute as 00000000-0000-0003-0000-000000000007 unless entity @s[scores={global=1}] run scoreboard objectives add global dummy
# execute as 00000000-0000-0003-0000-000000000007 unless entity @s[scores={global=1}] run scoreboard players set 00000000-0000-0003-0000-000000000007 global 1