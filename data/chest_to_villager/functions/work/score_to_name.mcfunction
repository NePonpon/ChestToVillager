#> chest_to_villager:work/score_to_name
#
# スコアの値をCustomNameに代入します
# 赤石愛氏のサンプルコードを参考に作っています
# https://github.com/Ai-Akaishi/IndependentCustomDimensionSample/blob/master/DimensionVoid/data/usage_example/functions/inject_score_into_entity_name.mcfunction
#
# @api

#> 座標を書き換える人へ
# ディメンションを変える場合は forceload,setblock コマンドの前に execute in <dimension> run を加えてください。
# 座標を書き換える場合は forceload と setblock の座標をそれぞれ対応させて変更してください。#


forceload add 0 0

tag @s add CTVTarget
setblock 0 0 0 minecraft:lectern{Book:{id:"written_book",Count:1b,tag:{title:"",author:"",pages:['{"score":{"name":"@e[tag=CTVTarget,limit=1]","objective":"ChestToVillager"}}']}}}
tag @s remove CTVTarget

data modify entity @s CustomName set from block 0 0 0 Book.tag.pages[0]

setblock 0 0 0 bedrock

forceload remove 0 0
