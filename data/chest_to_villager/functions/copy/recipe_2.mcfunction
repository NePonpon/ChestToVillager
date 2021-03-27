#> chest_to_villager:copy/recipe_2
#
# Itemsの情報をRecipesに変換する その2
# 圧倒的ゴリ押しぱーりーwwww
#
# @within
#   function
#       chest_to_villager:copy/recipe_1
#       chest_to_villager:copy/recipe_2

# 交易不可能の交易項目が無いかどうかの確認
execute unless data storage chest_to_villager: making[0].buy.id unless data storage chest_to_villager: making[0].buyB.id run data modify storage chest_to_villager: making[0].Remove set value true
execute unless data storage chest_to_villager: making[0].sell.id run data modify storage chest_to_villager: making[0].Remove set value true

execute unless data storage chest_to_villager: making[0].Remove run data modify storage chest_to_villager: Recipes append from storage chest_to_villager: making[0]
execute unless data storage chest_to_villager: making[0].Remove run data remove storage chest_to_villager: making[0]
execute if data storage chest_to_villager: making[0].Remove run data remove storage chest_to_villager: making[0]

execute if data storage chest_to_villager: making[] run function chest_to_villager:copy/recipe_2