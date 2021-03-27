#> chest_to_villager:add/chest
#
# コピー元チェストを設定します
#
# @within advancement chest_to_villager:add_chest

execute as @e[tag=AddChest,sort=nearest,limit=1] at @s if block ~ ~ ~ #chest_to_villager:chests run function chest_to_villager:add/entity

execute as @e[tag=AddChest,sort=nearest,limit=1] at @s unless block ~ ~ ~ #chest_to_villager:chests run function chest_to_villager:error/not_chest

advancement revoke @s only chest_to_villager:add_chest