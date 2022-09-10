execute as @e[tag=Game] at @s positioned ~7 ~1 ~4 unless entity @e[tag=Withdrawl,distance=..1] run summon villager ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Withdrawl\"",VillagerData:{profession:librarian,level:10,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Tags:["Center","Withdrawl","init"],Offers:{Recipes:[{buy:{id:iron_ingot,Count:1},sell:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},sell:{id:sunflower,Count:1,tag:{Redeemable:1b,RedeemTinCoin:1b,display:{Name:"\"Tin Coin\"",Lore:["\"Worth 10,000\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},sell:{id:sunflower,Count:1,tag:{Redeemable:1b,RedeemBronzeCoin:1b,display:{Name:"\"Bronze Coin\"",Lore:["\"Worth 100,000\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},sell:{id:sunflower,Count:1,tag:{Redeemable:1b,RedeemSilverCoin:1b,display:{Name:"\"Silver Coin\"",Lore:["\"Worth 1,000,000\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},sell:{id:sunflower,Count:1,tag:{Redeemable:1b,RedeemGoldCoin:1b,display:{Name:"\"Gold Coin\"",Lore:["\"Worth 10,000,000\""]}}},rewardExp:0b,maxUses:9999999}]}}
execute as @e[tag=Withdrawl,tag=!Center,tag=init] at @s run tp @s ~ ~ ~ ~0 0
execute as @e[tag=Withdrawl,tag=!Center,tag=init] run tag @s remove init

execute as @e[tag=Game] at @s positioned ~7 ~1 ~9 unless entity @e[tag=Deposit,distance=..1] run summon villager ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Deposit\"",VillagerData:{profession:librarian,level:10,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Tags:["Center","Deposit","init"],Offers:{Recipes:[{buy:{id:iron_ingot,Count:1},sell:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},buyB:{id:sunflower,Count:1,tag:{TinCoin:1b,display:{Name:"\"Tin Coin\"",Lore:["\"Worth 10,000\""]}}},sell:{id:paper,Count:1,tag:{Redeemable:1b,RedeemTinCoinScore:1b,display:{Name:"\"Score\"",Lore:["\"10,000 Score\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},buyB:{id:sunflower,Count:1,tag:{BronzeCoin:1b,display:{Name:"\"Bronze Coin\"",Lore:["\"Worth 100,000\""]}}},sell:{id:paper,Count:1,tag:{Redeemable:1b,RedeemBronzeCoinScore:1b,display:{Name:"\"Score\"",Lore:["\"100,000 Score\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},buyB:{id:sunflower,Count:1,tag:{SilverCoin:1b,display:{Name:"\"Silver Coin\"",Lore:["\"Worth 1,000,000\""]}}},sell:{id:paper,Count:1,tag:{Redeemable:1b,RedeemSilverCoinScore:1b,display:{Name:"\"Score\"",Lore:["\"1,000,000 Score\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:paper,Count:1,tag:{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}},buyB:{id:sunflower,Count:1,tag:{GoldCoin:1b,display:{Name:"\"Gold Coin\"",Lore:["\"Worth 10,000,000\""]}}},sell:{id:paper,Count:1,tag:{Redeemable:1b,RedeemGoldCoinScore:1b,display:{Name:"\"Score\"",Lore:["\"10,000,000 Score\""]}}},rewardExp:0b,maxUses:9999999}]}}
execute as @e[tag=Deposit,tag=!Center,tag=init] at @s run tp @s ~ ~ ~ ~180 0
execute as @e[tag=Deposit,tag=!Center,tag=init] run tag @s remove init

#Redeem Coins
execute as @a[nbt={Inventory:[{id:"minecraft:sunflower",tag:{RedeemTinCoin:1b}}]}] at @s if entity @s[scores={Score=10000..}] run tag @s add RedeemTinCoin
execute as @a[tag=RedeemTinCoin] at @s run scoreboard players remove @s Score 10000
execute as @a[tag=RedeemTinCoin] at @s run clear @s sunflower{RedeemTinCoin:1b} 1
execute as @a[tag=RedeemTinCoin] at @s run give @s sunflower{TinCoin:1b,display:{Name:"\"Tin Coin\"",Lore:["\"Worth 10,000\""]}}
execute as @a[tag=RedeemTinCoin] at @s run tag @s add GiveCert
execute as @a[tag=RedeemTinCoin] at @s run tag @s remove RedeemTinCoin

execute as @a[nbt={Inventory:[{id:"minecraft:sunflower",tag:{RedeemBronzeCoin:1b}}]}] at @s if entity @s[scores={Score=100000..}] run tag @s add RedeemBronzeCoin
execute as @a[tag=RedeemBronzeCoin] at @s run scoreboard players remove @s Score 100000
execute as @a[tag=RedeemBronzeCoin] at @s run clear @s sunflower{RedeemBronzeCoin:1b} 1
execute as @a[tag=RedeemBronzeCoin] at @s run give @s sunflower{BronzeCoin:1b,display:{Name:"\"Bronze Coin\"",Lore:["\"Worth 100,000\""]}}
execute as @a[tag=RedeemBronzeCoin] at @s run tag @s add GiveCert
execute as @a[tag=RedeemBronzeCoin] at @s run tag @s remove RedeemBronzeCoin

execute as @a[nbt={Inventory:[{id:"minecraft:sunflower",tag:{RedeemSilverCoin:1b}}]}] at @s if entity @s[scores={Score=1000000..}] run tag @s add RedeemSilverCoin
execute as @a[tag=RedeemSilverCoin] at @s run scoreboard players remove @s Score 1000000
execute as @a[tag=RedeemSilverCoin] at @s run clear @s sunflower{RedeemSilverCoin:1b} 1
execute as @a[tag=RedeemSilverCoin] at @s run give @s sunflower{SilverCoin:1b,display:{Name:"\"Silver Coin\"",Lore:["\"Worth 1,000,000\""]}}
execute as @a[tag=RedeemSilverCoin] at @s run tag @s add GiveCert
execute as @a[tag=RedeemSilverCoin] at @s run tag @s remove RedeemSilverCoin

execute as @a[nbt={Inventory:[{id:"minecraft:sunflower",tag:{RedeemGoldCoin:1b}}]}] at @s if entity @s[scores={Score=10000000..}] run tag @s add RedeemGoldCoin
execute as @a[tag=RedeemGoldCoin] at @s run scoreboard players remove @s Score 10000000
execute as @a[tag=RedeemGoldCoin] at @s run clear @s sunflower{RedeemGoldCoin:1b} 1
execute as @a[tag=RedeemGoldCoin] at @s run give @s sunflower{GoldCoin:1b,display:{Name:"\"Gold Coin\"",Lore:["\"Worth 10,000,000\""]}}
execute as @a[tag=RedeemGoldCoin] at @s run tag @s add GiveCert
execute as @a[tag=RedeemGoldCoin] at @s run tag @s remove RedeemGoldCoin

execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{RedeemTinCoinScore:1b}}]}] at @s run tag @s add RedeemTinCoinScore
execute as @a[tag=RedeemTinCoinScore] at @s run scoreboard players add @s Score 10000
execute as @a[tag=RedeemTinCoinScore] at @s run clear @s paper{RedeemTinCoinScore:1b} 1
execute as @a[tag=RedeemTinCoinScore] at @s run tag @s add GiveCert
execute as @a[tag=RedeemTinCoinScore] at @s run tag @s remove RedeemTinCoinScore

execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{RedeemBronzeCoinScore:1b}}]}] at @s run tag @s add RedeemBronzeCoinScore
execute as @a[tag=RedeemBronzeCoinScore] at @s run scoreboard players add @s Score 100000
execute as @a[tag=RedeemBronzeCoinScore] at @s run clear @s paper{RedeemBronzeCoinScore:1b} 1
execute as @a[tag=RedeemBronzeCoinScore] at @s run tag @s add GiveCert
execute as @a[tag=RedeemBronzeCoinScore] at @s run tag @s remove RedeemBronzeCoinScore

execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{RedeemSilverCoinScore:1b}}]}] at @s run tag @s add RedeemSilverCoinScore
execute as @a[tag=RedeemSilverCoinScore] at @s run scoreboard players add @s Score 1000000
execute as @a[tag=RedeemSilverCoinScore] at @s run clear @s paper{RedeemSilverCoinScore:1b} 1
execute as @a[tag=RedeemSilverCoinScore] at @s run tag @s add GiveCert
execute as @a[tag=RedeemSilverCoinScore] at @s run tag @s remove RedeemSilverCoinScore

execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{RedeemGoldCoinScore:1b}}]}] at @s run tag @s add RedeemGoldCoinScore
execute as @a[tag=RedeemGoldCoinScore] at @s run scoreboard players add @s Score 10000000
execute as @a[tag=RedeemGoldCoinScore] at @s run clear @s paper{RedeemGoldCoinScore:1b} 1
execute as @a[tag=RedeemGoldCoinScore] at @s run tag @s add GiveCert
execute as @a[tag=RedeemGoldCoinScore] at @s run tag @s remove RedeemGoldCoinScore

execute as @a[nbt={Inventory:[{tag:{Redeemable:1b}}]}] run tag @s add FailedRedeem 
execute as @a[tag=FailedRedeem] at @s run tellraw @s ["You Cannot Afford This Coin"]
execute as @a[tag=FailedRedeem] at @s run clear @s sunflower{Redeemable:1b} 1

execute as @a[tag=FailedRedeem] at @s run tag @s add GiveCert
execute as @a[tag=FailedRedeem] at @s run tag @s remove FailedRedeem

execute as @a[tag=GiveCert] at @s run give @s paper{Cert:1b,display:{Name:"\"Certificate Of Account\"",Lore:["\"Used to Withdrawl and Deposit\""]}}
execute as @a[tag=GiveCert] at @s run tag @s remove GiveCert

#Vault
execute as @e[tag=Game,limit=1] at @s positioned ~8 ~6.835 ~3.9 unless entity @e[tag=Vault,distance=..1] run summon minecraft:falling_block ~ ~ ~ {NoGravity:1b,Tags:["FallingBlock","Vault"],BlockState:{Name:"minecraft:iron_block"}}

execute as @e[tag=SummonTinItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:sunflower",Count:1b,tag:{TinCoin:1b,display:{Name:"\"Tin Coin\"",Lore:["\"Worth 10,000\""]}}}}
execute as @e[tag=SummonTinItem] at @s run tag @s remove SummonTinItem

execute as @e[tag=SummonBronzeItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:sunflower",Count:1b,tag:{BronzeCoin:1b,display:{Name:"\"Bronze Coin\"",Lore:["\"Worth 100,000\""]}}}}
execute as @e[tag=SummonBronzeItem] at @s run tag @s remove SummonBronzeItem

execute as @e[tag=SummonSilverItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:sunflower",Count:1b,tag:{SilverCoin:1b,display:{Name:"\"Sliver Coin\"",Lore:["\"Worth 1,000,000\""]}}}}
execute as @e[tag=SummonSilverItem] at @s run tag @s remove SummonSilverItem

execute as @e[tag=SummonGoldItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:sunflower",Count:1b,tag:{GoldCoin:1b,display:{Name:"\"Gold Coin\"",Lore:["\"Worth 10,000,000\""]}}}}
execute as @e[tag=SummonGoldItem] at @s run tag @s remove SummonGoldItem

