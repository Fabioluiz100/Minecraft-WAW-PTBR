
# Edit path
execute if entity @s[tag=showPathPoints,scores={pathIndicator=0}] run title @s actionbar ["",{"text":"Rotação","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=1}] run title @s actionbar ["",{"text":"Fase ociosa/de caminhada","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=2}] run title @s actionbar ["",{"text":"Excluir","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=3}] run title @s actionbar ["",{"text":"ID do caminho  -->  ","color":"blue","bold":true},{"score":{"name":"@e[tag=hover,tag=pathIndicator,limit=1]","objective":"PathID"},"color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=4}] run title @s actionbar ["",{"text":"ID do ponto de trajetória  -->  ","color":"blue","bold":true},{"score":{"name":"@e[tag=hover,tag=pathIndicator,limit=1]","objective":"PathPointID"},"color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] run title @s actionbar ["",{"text":"É o fim do caminho?","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] if entity @e[tag=pathIndicator,scores={pathEnding=0},tag=hover] run title @s actionbar ["",{"text":"É o fim do caminho? - FALSO","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] if entity @e[tag=pathIndicator,scores={pathEnding=1},tag=hover] run title @s actionbar ["",{"text":"É o fim do caminho? - VERDADEIRO - Ciclo","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] if entity @e[tag=pathIndicator,scores={pathEnding=2},tag=hover] run title @s actionbar ["",{"text":"É o fim do caminho? - verdadeiro - Parada permanente","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] if entity @e[tag=pathIndicator,scores={pathEnding=3},tag=hover] run title @s actionbar ["",{"text":"É o fim do caminho? - FALSO - cutscene Parada","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=6}] run title @s actionbar ["",{"text":"Copiar/Colar ID do Ponto","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=7}] run title @s actionbar ["",{"text":"Copiar/Colar ID do Caminho","color":"blue","bold":true}]

# Edit NPC
title @s[tag=editNPC,scores={editStick=1}] actionbar ["",{"text":"Braços","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=2}] actionbar ["",{"text":"Cabeça","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=3}] actionbar ["",{"text":"Espaço para roupas 1","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=4}] actionbar ["",{"text":"Espaço para roupas 2","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=5}] actionbar ["",{"text":"Espaço para roupas 3","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=6}] actionbar ["",{"text":"Casa","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=7}] actionbar ["",{"text":"Excluir","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=8}] actionbar ["",{"text":"Rotação","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=9}] actionbar ["",{"text":"Conversa","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=10}] actionbar ["",{"text":"Conversa 100","color":"blue","bold":true}]



# Edit Gameplay
title @s[tag=editGameplay,scores={editStick=1}] actionbar ["",{"text":"Rotação","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=2}] actionbar ["",{"text":"Tipo","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=3}] actionbar ["",{"text":"Subtipo","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=4}] actionbar ["",{"text":"Atraso","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=5}] actionbar ["",{"text":"Excluir","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=6}] actionbar ["",{"text":"ID","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=7}] actionbar ["",{"text":"Número","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=8}] actionbar ["",{"text":"Excluir o mais próximo","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=9}] actionbar ["",{"text":"Venha até mim","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=10}] actionbar ["",{"text":"Copiar/colar ID","color":"blue","bold":true}]
