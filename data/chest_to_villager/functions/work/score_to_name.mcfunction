#> chest_to_villager:work/score_to_name
#
# スコアの値をCustomNameに代入します
# 赤石愛氏のサンプルコードを参考に作っています
# https://github.com/Ai-Akaishi/IndependentCustomDimensionSample/blob/master/DimensionVoid/data/usage_example/functions/inject_score_into_entity_name.mcfunction
#
# @api

tag @s add CTVTarget
setblock ~ ~1 ~ minecraft:lectern{Book:{id:"written_book",Count:1b,tag:{title:"",author:"",pages:['{"score":{"name":"@e[tag=CTVTarget,limit=1]","objective":"ChestToVillager"}}']}}}
tag @s remove CTVTarget

data modify entity @s CustomName set from block ~ ~1 ~ Book.tag.pages[0]

setblock ~ ~1 ~ air
