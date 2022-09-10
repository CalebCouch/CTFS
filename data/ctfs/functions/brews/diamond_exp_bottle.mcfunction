execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{GoldExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..0.75] run tag @s add CraftingDiamondExpBottle
execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{GoldExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..0.75] run tag @s add RemoveDiamondExpBottleItems
execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{GoldExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..0.75] run tag @s add Crafting 


execute as @e[tag=RemoveDiamondExpBottleItems] at @s positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{GoldExp:1b}}},distance=..0.75,limit=1] 
execute as @e[tag=RemoveDiamondExpBottleItems] at @s positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..0.75,limit=1] 
execute as @e[tag=RemoveDiamondExpBottleItems] at @s run tag @s remove RemoveDiamondExpBottleItems



execute as @e[tag=CauldronSummonItem,tag=CraftingDiamondExpBottle] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.25,0.1],Tags:["dripFrill"],Item:{id:"minecraft:experience_bottle",Count:1b,tag:{DiamondExp:1b,display:{Name:'{"text":"§bDiamond Experience Bottle","italic":"true"}'}}}}
execute as @e[tag=CauldronSummonItem,tag=CraftingDiamondExpBottle] at @s run tag @s remove CraftingDiamondExpBottle