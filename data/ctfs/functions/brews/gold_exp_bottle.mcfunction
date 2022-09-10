execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{IronExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..0.75] run tag @s add CraftingGoldExpBottle
execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{IronExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..0.75] run tag @s add RemoveGoldExpBottleItems
execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{IronExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..0.75] run tag @s add Crafting 


execute as @e[tag=RemoveGoldExpBottleItems] at @s positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{IronExp:1b}}},distance=..0.75,limit=1] 
execute as @e[tag=RemoveGoldExpBottleItems] at @s positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..0.75,limit=1] 
execute as @e[tag=RemoveGoldExpBottleItems] at @s run tag @s remove RemoveGoldExpBottleItems



execute as @e[tag=CauldronSummonItem,tag=CraftingGoldExpBottle] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.25,0.1],Tags:["dripFrill"],Item:{id:"minecraft:experience_bottle",Count:1b,tag:{GoldExp:1b,display:{Name:'{"text":"§6Gold Experience Bottle","italic":"true"}'}}}}
execute as @e[tag=CauldronSummonItem,tag=CraftingGoldExpBottle] at @s run tag @s remove CraftingGoldExpBottle