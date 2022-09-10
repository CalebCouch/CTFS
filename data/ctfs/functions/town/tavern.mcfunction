#execute as @e[tag=Game,limit=1] at @s positioned ~14 ~1 ~-8 run particle minecraft:flame ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=Game] at @s positioned ~14 ~ ~-8 unless entity @e[tag=MercenaryTavern,distance=..1] run tag @e[tag=Pillager,distance=..1] add kill
execute as @e[tag=Game] at @s positioned ~14 ~ ~-8 unless entity @e[tag=MercenaryTavern,distance=..1] run summon villager ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Mercenary\"",VillagerData:{profession:librarian,level:10,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Tags:["TavernChar","Center","Invisible","MercenaryTavern","init"],Offers:{Recipes:[{buy:{id:sunflower,Count:1,tag:{TinCoin:1b,display:{Name:"\"Tin Coin\"",Lore:["\"Worth 10,000\""]}}},sell:{id:"minecraft:book",Count:1b,tag:{MercBook:1b,display:{Name:"\"Mercenary Hand Book\"",Lore:["\"Use to Command Mercenaries\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:sunflower,Count:1,tag:{BronzeCoin:1b,display:{Name:"\"Bronze Coin\"",Lore:["\"Worth 100,000\""]}}},sell:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Mercenary","italic":"true"}'},EntityTag:{CustomName:"\"Mercenary\"",Tags:["SummonMercenary","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}}},rewardExp:0b,maxUses:9999999}]}}
execute as @e[tag=MercenaryTavern,tag=!Center,tag=init] at @s run tp @s ~ ~ ~ ~90 0
execute as @e[tag=MercenaryTavern,tag=!Center,tag=init] run tag @s remove init

execute as @e[tag=Game] at @s positioned ~14 ~ ~-8 unless entity @e[tag=Pillager,distance=..1] run summon pillager ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Mercenary\"",Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Tags:["TavernChar","Center","Pillager","init"]}
execute as @e[tag=Pillager,tag=!Center,tag=init] at @s run tp @s ~ ~ ~ ~90 0
execute as @e[tag=Pillager,tag=!Center,tag=init] run tag @s remove init

function ctfs:mercenary