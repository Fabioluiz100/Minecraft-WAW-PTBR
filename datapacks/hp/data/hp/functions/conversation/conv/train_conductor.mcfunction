# Style:
# (_____Normal_____)
# (_____Quest_____)
# (_____Return_____)

# Sound
# (_____click_____)
# (_____paper_____)

# On first execution used to set convOverride
execute as @s[scores={delayConvTellraw=2,playerID=1},tag=!hogwartsExpressUnlocked] run scoreboard players operation @s convState = trainConductor p1convOverride
execute as @s[scores={delayConvTellraw=2,playerID=2},tag=!hogwartsExpressUnlocked] run scoreboard players operation @s convState = trainConductor p2convOverride
execute as @s[scores={delayConvTellraw=2,playerID=3},tag=!hogwartsExpressUnlocked] run scoreboard players operation @s convState = trainConductor p3convOverride
execute as @s[scores={delayConvTellraw=2,playerID=4},tag=!hogwartsExpressUnlocked] run scoreboard players operation @s convState = trainConductor p4convOverride

# Cheeky fix for the conversation to be location determined
execute as @s[scores={delayConvTellraw=2},tag=hogwartsExpressUnlocked] at @s as @e[tag=inConversationNPC,limit=1,sort=nearest] if entity @s[tag=kingsCrossTrainConductor] run scoreboard players set @p[tag=activePlayer] convState 8
execute as @s[scores={delayConvTellraw=2},tag=hogwartsExpressUnlocked] at @s as @e[tag=inConversationNPC,limit=1,sort=nearest] if entity @s[tag=hogsmeadeTrainConductor] run scoreboard players set @p[tag=activePlayer] convState 9


execute as @s[scores={delayConvTellraw=2}] run scoreboard players set @s oldConvState -2
execute as @s[scores={delayConvTellraw=1..}] run scoreboard players remove @s delayConvTellraw 1

scoreboard players set @s npcVoice 0

################################################################################################
##################################### Conversation State 0 #####################################
################################################################################################

tag @s[scores={convState=0},tag=drawOptions] add use
tag @s[scores={convState=0},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Todos a bordo! O Expresso de Hogwarts partirá em breve. Encontrem uma cabine no trem e partiremos num instante.\"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Farei isso.\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer] run scoreboard players set @s trackedQuestID 7
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer] run tag @s add trigger
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≤ Tenho uma pergunta sobre o Expresso de Hogwarts.\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≥ Há algo que preciso fazer primeiro.\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 3
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 1 #####################################
################################################################################################

tag @s[scores={convState=1},tag=drawOptions] add use
tag @s[scores={convState=1},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" O que você quer perguntar?\\n\"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≤ Fale-me sobre o Expresso de Hogwarts.\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 2
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≤ Quando o trem entrou em operação?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 4
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≤ Como os alunos chegavam a Hogwarts antigamente?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 3
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=4}] run data merge entity @s {CustomName:"{\"text\":\"Há algo mais\"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg,tag=!hogwartsExpressUnlocked] as @e[type=armor_stand,limit=1,scores={con=4}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 0
execute as @s[tag=trg,tag=hogwartsExpressUnlocked] at @s as @e[tag=inConversationNPC,limit=1,sort=nearest] if entity @s[tag=kingsCrossTrainConductor] as @e[type=armor_stand,limit=1,scores={con=4}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 8
execute as @s[tag=trg,tag=hogwartsExpressUnlocked] at @s as @e[tag=inConversationNPC,limit=1,sort=nearest] if entity @s[tag=hogsmeadeTrainConductor] as @e[type=armor_stand,limit=1,scores={con=4}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 9

#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 4
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
execute as @s[tag=use,tag=!hogwartsExpressUnlocked] at @s as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s backConvState 0
execute as @s[tag=use,tag=hogwartsExpressUnlocked] at @s as @e[tag=inConversationNPC,limit=1,sort=nearest] if entity @s[tag=kingsCrossTrainConductor] as @p[tag=activePlayer] store success score @s tmp run scoreboard players set @s backConvState 8
execute as @s[tag=use,tag=hogwartsExpressUnlocked] at @s as @e[tag=inConversationNPC,limit=1,sort=nearest] if entity @s[tag=hogsmeadeTrainConductor] as @p[tag=activePlayer] store success score @s tmp run scoreboard players set @s backConvState 9
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 2 #####################################
################################################################################################

tag @s[scores={convState=2},tag=drawOptions] add use
tag @s[scores={convState=2},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" O Expresso de Hogwarts é o nome do trem que faz o percurso entre a plataforma 9 ¾ da Estação King's Cross, em Londres, e a Estação de Hogsmeade. Ele realiza essa viagem cerca de seis vezes por ano, podendo ser mais, conforme a necessidade. O Expresso transporta os alunos de e para a Escola de Magia e Bruxaria de Hogwarts no início e no final de cada período letivo.\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------


#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 3 #####################################
################################################################################################

tag @s[scores={convState=3},tag=drawOptions] add use
tag @s[scores={convState=3},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Os alunos de Hogwarts costumavam chegar à escola da maneira que lhes apetecesse. Alguns voavam em vassouras – uma façanha difícil quando se carregavam malas e animais de estimação; outros utilizavam carroças encantadas e, mais tarde, carruagens; alguns tentavam Aparatar, embora frequentemente com efeitos desastrosos, já que a escola é protegida por Feitiços Anti-Aparatação; outros montavam uma variedade de criaturas mágicas. \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------
#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------

# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 4 #####################################
################################################################################################

tag @s[scores={convState=4},tag=drawOptions] add use
tag @s[scores={convState=4},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Em 1827, a Ministra da Magia, Ottaline Gambol, sugeriu o uso da locomotiva a vapor para resolver o antigo problema de como transportar centenas de estudantes de e para o Castelo de Hogwarts todos os anos letivos sem atrair a atenção dos trouxas. A locomotiva serviria como uma alternativa segura e confortável às Chaves de Portal ou a meios de transporte não regulamentados. \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 5
#-------------------------------


#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 5 #####################################
################################################################################################

tag @s[scores={convState=5},tag=drawOptions] add use
tag @s[scores={convState=5},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" A locomotiva do Expresso de Hogwarts foi originalmente construída por engenheiros trouxas. Em 1830, o Ministério da Magia realizou uma operação em larga escala envolvendo cento e sessenta e sete Feitiços da Memória, bem como o maior Feitiço de Ocultação já realizado na Grã-Bretanha, a fim de adquirir a locomotiva.\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 6
#-------------------------------


#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 4
tag @s remove use
tag @s remove trg
#===============================


################################################################################################
##################################### Conversation State 6 #####################################
################################################################################################

tag @s[scores={convState=6},tag=drawOptions] add use
tag @s[scores={convState=6},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Na manhã seguinte, os funcionários trouxas da ferrovia acordaram com a sensação de que haviam perdido algo, uma impressão que os acompanhou pelo resto do ano. Houve resistência inicial por parte das famílias puro-sangue contra o uso de um meio de transporte construído por trouxas para bruxos, até que o Ministério decretou que os alunos chegariam à escola de trem ou não iriam de forma alguma. \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------


#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 5
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 7 #####################################
################################################################################################

tag @s[scores={convState=7},tag=drawOptions] add use
tag @s[scores={convState=7},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Todas essas pessoas são trouxas e todas estão erradas. O pub mais antigo de Londres, como qualquer bruxo lhe dirá, é o Caldeirão Furado. \\n\\n\\n \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 2
#-------------------------------
#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------

# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 3
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 8 #####################################
################################################################################################

tag @s[scores={convState=8},tag=drawOptions] add use
tag @s[scores={convState=8},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Como posso ajudá-lo? \\n\"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] if entity @p[tag=activePlayer,tag=!confirmConvOption] run data merge entity @s {CustomName:"{\"text\":\"√ Viagem até a estação de Hogsmeade\"}",Tags:["_____Normal_____","_____click_____","fastTravel","convOption","i"]}
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] if entity @p[tag=activePlayer,tag=confirmConvOption] run data merge entity @s {CustomName:"{\"text\":\"Estação Hogsmeade\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run scoreboard players set @s convState -1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=36}] run tag @s add cutsceneLeader
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run scoreboard players set @s cutSceneID 36
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run function hp:cutscenes/init_cutscene
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run function hp:conversation/exit_conversation
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≤ Tenho uma pergunta sobre o Expresso de Hogwarts.\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≥ Há algo que preciso fazer primeiro.\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 3
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 9 #####################################
################################################################################################

tag @s[scores={convState=9},tag=drawOptions] add use
tag @s[scores={convState=9},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Como posso ajudá-lo? \\n\"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] if entity @p[tag=activePlayer,tag=!confirmConvOption] run data merge entity @s {CustomName:"{\"text\":\"√ Viaje até a estação King's Cross.\"}",Tags:["_____Normal_____","_____click_____","fastTravel","convOption","i"]}
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] if entity @p[tag=activePlayer,tag=confirmConvOption] run data merge entity @s {CustomName:"{\"text\":\"Estação King's Cross\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run scoreboard players set @s convState -1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=37}] run tag @s add cutsceneLeader
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run scoreboard players set @s cutSceneID 37
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run function hp:cutscenes/init_cutscene
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run function hp:conversation/exit_conversation
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≤ Tenho uma pergunta sobre o Expresso de Hogwarts.\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≥ Há algo que preciso fazer primeiro.\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 3
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================


################################################################################################
##################################### Conversation State 10 #####################################
################################################################################################

tag @s[scores={convState=10},tag=drawOptions] add use
tag @s[scores={convState=10},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Vá falar com Rúbeo Hagrid. Ele o levará ao castelo. \\n\\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------


#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 11 #####################################
################################################################################################

tag @s[scores={convState=11},tag=drawOptions] add use
tag @s[scores={convState=11},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" O trem partirá em breve! Procure um vagão vazio. \\n\\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------


#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================