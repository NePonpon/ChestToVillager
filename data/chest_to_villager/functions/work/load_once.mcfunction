#> chest_to_villager:work/load_once
#
# 初回設定
#
# @within function chest_to_villager:work/load

# スコアボード作成
scoreboard objectives add ChestToVillager dummy

# ストレージ
# テンプレート設定
data modify storage chest_to_villager: template set value [{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648},{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648},{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648},{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648},{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648},{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648},{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648},{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648},{buy:{},buyB:{},sell:{},rewardExp:false,maxUses:2147483647,uses:-2147483648}]

# loadチェック
data modify storage chest_to_villager: version set value '{"text":"ver 1.0","color":"aqua"}'

tellraw NePonpon_10932 [{"storage":"chest_to_villager:","nbt":"version","interpret": true},{"text": " の初回ロードをしました。","color": "white"}]
