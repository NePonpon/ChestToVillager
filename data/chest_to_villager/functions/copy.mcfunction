#> chest_to_villager:copy
#
# チェストの情報をコピーする
# as 村人 で実行されるはず
#
# @user

# エラー
execute unless entity @s[type=villager] run function chest_to_villager:error/not_villager
execute unless entity @e[tag=ChestToVillager] run function chest_to_villager:error/non_chest

# メイン処理起動
execute if entity @s[type=villager] if entity @e[tag=ChestToVillager,limit=1] run tag @s add CTVCopy
# execute if entity @e[tag=CTVCopy] run data remove entity @s Offers
data remove storage chest_to_villager: Recipes
execute if entity @e[tag=CTVCopy] run schedule function chest_to_villager:copy/load 1t
