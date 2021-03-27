#> chest_to_villager:work/reset
#
# リセット
#
# @within function chest_to_villager:copy/paste

# エンティティ削除
execute as @e[tag=ChestToVillager] run data merge entity @s {Health:0.0f,DeathTime:19s}

# スコアボード整理
scoreboard players reset Counter ChestToVillager
scoreboard players reset Slot1 ChestToVillager
scoreboard players reset Slot2 ChestToVillager
scoreboard players reset #9 ChestToVillager
scoreboard players reset NowCount ChestToVillager