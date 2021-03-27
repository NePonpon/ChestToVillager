#> chest_to_villager:remove/chest
#
# チェストの削除処理
#
# @within advancement chest_to_villager:remove_chest

execute as @e[type=armor_stand,tag=CTVChestPoint] at @s run function chest_to_villager:remove/entity
scoreboard players reset RemoveCount ChestToVillager

scoreboard players remove NowCount ChestToVillager 1
execute unless entity @e[type=armor_stand,tag=CTVChestPoint] run scoreboard players reset NowCount ChestToVillager

advancement revoke @s only chest_to_villager:remove_chest