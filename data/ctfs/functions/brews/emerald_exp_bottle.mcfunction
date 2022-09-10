execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{DiamondExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..0.75] run tag @s add CraftingEmeraldExpBottle
execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{DiamondExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..0.75] run tag @s add RemoveEmeraldExpBottleItems
execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{DiamondExp:1b}}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..0.75] run tag @s add Crafting 


execute as @e[tag=RemoveEmeraldExpBottleItems] at @s positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",tag:{DiamondExp:1b}}},distance=..0.75,limit=1] 
execute as @e[tag=RemoveEmeraldExpBottleItems] at @s positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..0.75,limit=1] 
execute as @e[tag=RemoveEmeraldExpBottleItems] at @s run tag @s remove RemoveEmeraldExpBottleItems



execute as @e[tag=CauldronSummonItem,tag=CraftingEmeraldExpBottle] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.25,0.1],Tags:["dripFrill"],Item:{id:"minecraft:experience_bottle",Count:1b,tag:{EmeraldExp:1b,display:{Name:'{"text":"§aEmerald Experience Bottle","italic":"true"}'}}}}
execute as @e[tag=CauldronSummonItem,tag=CraftingEmeraldExpBottle] at @s run tag @s remove CraftingEmeraldExpBottle