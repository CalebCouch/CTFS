execute as @e[tag=Game,limit=1] at @s positioned ~-14 ~-0.1 ~3 unless entity @e[tag=AAnvilS,distance=..1] run summon minecraft:shulker ~ ~ ~ {Tags:["AAnvilS","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b} 
execute as @e[tag=Game,limit=1] at @s positioned ~-14 ~-0.1 ~3 unless entity @e[tag=AAnvilB,distance=..1] run summon minecraft:falling_block ~ ~ ~ {NoGravity:1b,Tags:["FallingBlock","AAnvilB"],BlockState:{Name:"minecraft:anvil"}}

execute as @e[tag=Game,limit=1] at @s positioned ~-17 ~ ~8 unless entity @e[tag=BlackSmith,distance=..1] run summon villager ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Black Smith\"",VillagerData:{profession:weaponsmith,level:10,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Tags:["Center","BlackSmith","init"],Offers:{Recipes:[{buy:{id:sunflower,Count:1,tag:{SilverCoin:1b,display:{Name:"\"Silver Coin\"",Lore:["\"Worth 1,000,000\""]}}},sell:{id:paper,Count:1,tag:{ArmorUpgrade:1b,display:{Name:"\"Armor Upgrade\"",Lore:["\"Drop On The Anvil Outside To Use\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:sunflower,Count:3,tag:{TinCoin:1b,display:{Name:"\"Tin Coin\"",Lore:["\"Worth 10,000\""]}}},sell:{id:paper,Count:1,tag:{EnchantmentDisassembler:1b,display:{Name:"\"Enchantment Disassembler\"",Lore:["\"Drop On The Anvil Outside To Use\""]}}},rewardExp:0b,maxUses:9999999}]}}
execute as @e[tag=BlackSmith,tag=!Center,tag=init] at @s run tp @s ~ ~ ~ ~-90 0
execute as @e[tag=BlackSmith,tag=!Center,tag=init] run tag @s remove init

#give @a iron_chestplate{AttributeModifiers:[{Slot:"chest", AttributeName:"generic.armor", Name:"generic.armor", Amount:20.0, Operation:0, UUID:[I; -152596, -61963, -161679, -10288428]}]}

##ENCHANTMENT DISASSEMBLER
execute as @e[tag=EnchantmentDisassembler] at @s run tag @s remove EnchantmentDisassembler
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{EnchantmentDisassembler:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:enchanted_book"}}] run tag @s add EnchantmentDisassembler

execute as @e[tag=EnchantmentDisassembler,limit=1] at @s run xp add @p 1 levels
execute as @e[tag=EnchantmentDisassembler,limit=1] at @s run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0 25 force
execute as @e[tag=EnchantmentDisassembler,limit=1] at @s run kill @e[type=item,nbt={Item:{tag:{EnchantmentDisassembler:1b}}},distance=..1.1,limit=1] 
execute as @e[tag=EnchantmentDisassembler,limit=1] at @s run kill @s



##ARMOR UPGRADE
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:turtle_helmet"}}] run tag @s add ArmorUpgrade

execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] run tag @s add ArmorUpgrade

execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:diamond_leggings"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] run tag @s add ArmorUpgrade

execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:iron_helmet"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:iron_leggings"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:iron_boots"}}] run tag @s add ArmorUpgrade

execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:chainmail_helmet"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:chainmail_chestplate"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:chainmail_leggings"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:chainmail_boots"}}] run tag @s add ArmorUpgrade

execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:gold_helmet"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:gold_chestplate"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:gold_leggings"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:gold_boots"}}] run tag @s add ArmorUpgrade

execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:leather_helmet"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:leather_leggings"}}] run tag @s add ArmorUpgrade
execute as @e[tag=AAnvilB] at @s if entity @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..1.1] as @e[type=item,distance=..1.1] if entity @s[nbt={Item:{id:"minecraft:leather_boots"}}] run tag @s add ArmorUpgrade




execute as @e[tag=ArmorUpgrade,tag=!init] at @s run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0 25 force
execute as @e[tag=ArmorUpgrade,tag=!init] at @s run playsound minecraft:block.anvil.use block @a ~ ~ ~
execute as @e[tag=ArmorUpgrade,tag=!init] at @s run scoreboard players set @s Upgraded 0 
execute as @e[tag=ArmorUpgrade,tag=!init,limit=1] at @s store success score @s Upgraded run kill @e[type=item,nbt={Item:{tag:{ArmorUpgrade:1b}}},distance=..2,limit=1]

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Upgraded=0}] at @s run tag @s remove ArmorUpgrade

execute as @e[tag=ArmorUpgrade,tag=!init] at @s store result score @s Armor run data get entity @e[type=item,limit=1] Item.tag.AttributeModifiers[0].Amount

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s run data merge entity @s {Item:{tag:{AttributeModifiers:[{Slot:"chest", AttributeName:"generic.armor", Name:"generic.armor", Amount:0.0, Operation:0, UUID:[I; -152596, -61963, -161679, -10288428]}]}}}

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:turtle_helmet"}}] run scoreboard players set @s Armor 2

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] run scoreboard players set @s Armor 3
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] run scoreboard players set @s Armor 8
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] run scoreboard players set @s Armor 6
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] run scoreboard players set @s Armor 3

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] run scoreboard players set @s Armor 3
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] run scoreboard players set @s Armor 8
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:diamond_leggings"}}] run scoreboard players set @s Armor 6
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] run scoreboard players set @s Armor 3

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:iron_helm"}}] run scoreboard players set @s Armor 2
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] run scoreboard players set @s Armor 6
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:iron_leggings"}}] run scoreboard players set @s Armor 5
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:iron_boots"}}] run scoreboard players set @s Armor 2

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:chainmail_helmet"}}] run scoreboard players set @s Armor 2
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:chainmail_chestplate"}}] run scoreboard players set @s Armor 5
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:chainmail_leggings"}}] run scoreboard players set @s Armor 4
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:chainmail_boots"}}] run scoreboard players set @s Armor 1

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:gold_helmet"}}] run scoreboard players set @s Armor 2
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:gold_chestplate"}}] run scoreboard players set @s Armor 5
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:gold_leggings"}}] run scoreboard players set @s Armor 3
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:gold_boots"}}] run scoreboard players set @s Armor 1

execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:leather_helmet"}}] run scoreboard players set @s Armor 1
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] run scoreboard players set @s Armor 3
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:leather_leggings"}}] run scoreboard players set @s Armor 2
execute as @e[tag=ArmorUpgrade,tag=!init,scores={Armor=0}] at @s if entity @s[nbt={Item:{id:"minecraft:leather_boots"}}] run scoreboard players set @s Armor 1


execute as @e[tag=ArmorUpgrade,tag=!init] at @s run scoreboard players add @s Armor 1

execute as @e[tag=ArmorUpgrade,tag=!init] at @s store result entity @s Item.tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Armor
execute as @e[tag=ArmorUpgrade,tag=!init] at @s run tag @s add init
