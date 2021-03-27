#> chest_to_villager:copy/load
#
# チェストの情報を読み取る
#
# @within
#   function
#       chest_to_villager:copy
#       chest_to_villager:copy/load

execute as @e[type=armor_stand,tag=CTVChestPoint,scores={ChestToVillager=1}] at @s run data modify storage chest_to_villager: chest set from block ~ ~ ~ Items

# Recipesに変換
data modify storage chest_to_villager: making set from storage chest_to_villager: template
scoreboard players set #9 ChestToVillager 9
function chest_to_villager:copy/recipe_1

scoreboard players remove @e[type=armor_stand,tag=CTVChestPoint,scores={ChestToVillager=1..}] ChestToVillager 1
execute if entity @e[type=armor_stand,tag=CTVChestPoint,scores={ChestToVillager=1..}] run schedule function chest_to_villager:copy/load 1t
execute unless entity @e[type=armor_stand,tag=CTVChestPoint,scores={ChestToVillager=1..}] as @e[tag=CTVCopy] run function chest_to_villager:copy/paste
