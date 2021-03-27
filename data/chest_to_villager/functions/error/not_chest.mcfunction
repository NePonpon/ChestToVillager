#> chest_to_villager:error/not_chest
#
# エラー
# 設定アマスタをチェストの上に置いていない
#
# @within function chest_to_villager:add/chest

tellraw @a[limit=1,sort=nearest] {"text": "[error] チェストの上に置いてください","color": "red"}
kill @s