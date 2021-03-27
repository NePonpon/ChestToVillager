# ChestToVillager

## 概要
チェストの中身を村人の交易に変換することが出来ます。  

## 使用方法
### アイテムの入手
```/function chest_to_villager:give_item```  
と入力し、アイテムを手に入れます。  

### チェストの設定
##### チェストによる交易の設定の仕方
チェストにアイテムを配置することで指定することが出来ます。  
左側の列から右へ順に変換されていきます。  
上段は `buy`  
中段は `buyB`  
下段は `sell`  
にそれぞれ変換されます。  

##### 変換するチェストの指定
入手したアイテムをチェストの上に設置すると、チェストが発光し数字が表示されます。  
複数のチェストを指定することができ、数字が小さいものから順番に変換されていきます。  
指定解除は、発光したチェストをたたくとできます。  
その際、解除したものより大きな数字は前にずれます。  

### 村人への変換
チェストを指定した状態で、村人を実行基準にfunctionを実行します。  
```/execute as @e[type=villager,limit=1,sort=nearest] run function chest_to_villager:copy```  
上のコマンドをコピペして、変換対象の村人の近くで実行します。  
対象にする村人は事前にスポーンさせておくと良いです。  

## 注意事項
### チェストの指定方法
`buy` と `buyB` が空白、もしくは `sell` が空白になるような列は変換されません。  

### 特定座標の使用
`minecraft:overworld` の `0 0 0` の位置はこのデータパックを使用すると岩盤になります。  
岩盤となるブロックの座標を変更する場合は、`chest_to_villager:work/score_to_name` の中の座標を書き換えてください。  

## 更新履歴

21/3/27 - 1.0  
    リリース  

## 連絡など
By Ponpon  
Twitter [@nepon13](https://twitter.com/nepon13)  
Discord Ponpon#5326  
GitHub [NePonpon](https://github.com/NePonpon)  