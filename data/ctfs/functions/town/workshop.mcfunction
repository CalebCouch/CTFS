execute as @e[tag=Game,limit=1] at @s positioned ~-16 ~ ~14 unless entity @e[tag=Machinist,distance=..1] run summon villager ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Machinist\"",VillagerData:{profession:armorer,level:10,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Tags:["Center","Machinist","init"],Offers:{Recipes:[{buy:{id:sunflower,Count:1,tag:{SilverCoin:1b,display:{Name:"\"Silver Coin\"",Lore:["\"Worth 1,000,000\""]}}},sell:{id:paper,Count:1,tag:{SaddleBluePrint:1b,display:{Name:"\"§9Blue Print\"",Lore:["\"Saddle\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:sunflower,Count:1,tag:{SilverCoin:1b,display:{Name:"\"Silver Coin\"",Lore:["\"Worth 1,000,000\""]}}},sell:{id:paper,Count:1,tag:{TNTPipeBluePrint:1b,display:{Name:"\"§9Blue Print\"",Lore:["\"TNT Pipe\""]}}},rewardExp:0b,maxUses:9999999}]}}
execute as @e[tag=Machinist,tag=!Center,tag=init] at @s run tp @s ~ ~ ~ ~-90 0
execute as @e[tag=Machinist,tag=!Center,tag=init] run tag @s remove init


