execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..0.75] run tag @s add CraftingIronExpBottle
execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..0.75] run tag @s add RemoveIronExpBottleItems
execute as @e[tag=Cauldron,tag=!Crafting,tag=!CauldronSummonItem] at @s positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=..0.75] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..0.75] run tag @s add Crafting 


execute as @e[tag=RemoveIronExpBottleItems] at @s positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=..0.75,limit=1] 
execute as @e[tag=RemoveIronExpBottleItems] at @s positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..0.75,limit=1] 
execute as @e[tag=RemoveIronExpBottleItems] at @s run tag @s remove RemoveIronExpBottleItems



execute as @e[tag=CauldronSummonItem,tag=CraftingIronExpBottle] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.25,0.1],Tags:["dripFrill"],Item:{id:"minecraft:experience_bottle",Count:1b,tag:{IronExp:1b,display:{Name:'{"text":"§7Iron Experience Bottle","italic":"true"}'}}}}
execute as @e[tag=CauldronSummonItem,tag=CraftingIronExpBottle] at @s run tag @s remove CraftingIronExpBottle