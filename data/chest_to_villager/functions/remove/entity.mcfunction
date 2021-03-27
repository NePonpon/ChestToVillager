#> chest_to_villager:remove/entity
#
# エンティティ処理
#
# @within function chest_to_villager:remove/chest

execute unless entity @e[type=shulker,tag=CTVChestPoint,distance=..0.4] run scoreboard players operation RemoveCount ChestToVillager = @s ChestToVillager
execute unless entity @e[type=shulker,tag=CTVChestPoint,distance=..0.4] run kill @s

execute if entity @e[type=shulker,tag=CTVChestPoint,distance=..0.4] if score RemoveCount ChestToVillager <= @s ChestToVillager run scoreboard players remove @s ChestToVillager 1
execute if entity @e[type=shulker,tag=CTVChestPoint,distance=..0.4] if score RemoveCount ChestToVillager <= @s ChestToVillager run function chest_to_villager:work/score_to_name
