#> chest_to_villager:copy/paste
#
# 村人に適用する
#
# @within function chest_to_villager:copy/load

# schedule clear chest_to_villager:copy/load

data modify entity @s Offers.Recipes set from storage chest_to_villager: Recipes
execute at @s run tellraw @p {"text": "交易品を村人へ適用しました。","color": "green"}
tag @s remove CTVCopy

function chest_to_villager:work/reset
