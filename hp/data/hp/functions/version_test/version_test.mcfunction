# A versão dos dados deve ser exclusiva para cada versão, portanto, é uma forma de testar se o mapa foi aberto na versão 1.14 ou posterior.
execute store result score @s tmp run data get entity @s DataVersion

# Disabled until 1.17 is released
# execute if score @s tmp matches 1632.. run tag @s add wrongVersion
# execute if score @s tmp matches 1632.. run tag @s add inWrongVersion