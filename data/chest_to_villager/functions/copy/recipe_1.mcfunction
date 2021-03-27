#> chest_to_villager:copy/recipe_1
#
# Itemsの情報をRecipesに変換する その1
# 圧倒的ゴリ押しぱーりーwwww
#
# @within
#   function
#       chest_to_villager:copy/load
#       chest_to_villager:copy/recipe_1

execute store result score Slot1 ChestToVillager store result score Slot2 ChestToVillager run data get storage chest_to_villager: chest[0].Slot
data remove storage chest_to_villager: chest[0].Slot
#段
scoreboard players operation Slot1 ChestToVillager /= #9 ChestToVillager
#列
scoreboard players operation Slot2 ChestToVillager %= #9 ChestToVillager

# ここゴリ押しポイント
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 0 run data modify storage chest_to_villager: making[0].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 1 run data modify storage chest_to_villager: making[1].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 2 run data modify storage chest_to_villager: making[2].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 3 run data modify storage chest_to_villager: making[3].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 4 run data modify storage chest_to_villager: making[4].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 5 run data modify storage chest_to_villager: making[5].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 6 run data modify storage chest_to_villager: making[6].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 7 run data modify storage chest_to_villager: making[7].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 0 if score Slot2 ChestToVillager matches 8 run data modify storage chest_to_villager: making[8].buy set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 0 run data modify storage chest_to_villager: making[0].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 1 run data modify storage chest_to_villager: making[1].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 2 run data modify storage chest_to_villager: making[2].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 3 run data modify storage chest_to_villager: making[3].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 4 run data modify storage chest_to_villager: making[4].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 5 run data modify storage chest_to_villager: making[5].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 6 run data modify storage chest_to_villager: making[6].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 7 run data modify storage chest_to_villager: making[7].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 1 if score Slot2 ChestToVillager matches 8 run data modify storage chest_to_villager: making[8].buyB set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 0 run data modify storage chest_to_villager: making[0].sell set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 1 run data modify storage chest_to_villager: making[1].sell set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 2 run data modify storage chest_to_villager: making[2].sell set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 3 run data modify storage chest_to_villager: making[3].sell set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 4 run data modify storage chest_to_villager: making[4].sell set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 5 run data modify storage chest_to_villager: making[5].sell set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 6 run data modify storage chest_to_villager: making[6].sell set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 7 run data modify storage chest_to_villager: making[7].sell set from storage chest_to_villager: chest[0]
execute if score Slot1 ChestToVillager matches 2 if score Slot2 ChestToVillager matches 8 run data modify storage chest_to_villager: making[8].sell set from storage chest_to_villager: chest[0]

data remove storage chest_to_villager: chest[0]

execute if data storage chest_to_villager: chest[] run function chest_to_villager:copy/recipe_1
execute unless data storage chest_to_villager: chest[] run function chest_to_villager:copy/recipe_2
