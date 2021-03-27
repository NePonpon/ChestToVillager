#> chest_to_villager:add/entity
#
# エンティティ処理
#
# @within function chest_to_villager:add/chest

execute align y run tp ~ ~ ~
summon shulker ~ ~ ~ {NoAI:true,ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:false}],Tags:["ChestToVillager","CTVChestPoint"],Glowing:true,Health:0.01f}

execute store result score @s ChestToVillager run scoreboard players add NowCount ChestToVillager 1

# スコアの値をCustomNameに代入
function chest_to_villager:work/score_to_name
data modify entity @s CustomNameVisible set value true

tag @s remove AddChest
